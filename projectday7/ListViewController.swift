//
//  ListViewController.swift
//  projectday7
//
//  Created by sunbeam on 06/01/25.
//

import UIKit

class ListViewController: UIViewController,UITableViewDataSource,UITableViewDelegate,GetDataDelegate{
    
    
    
    
    
   

    @IBOutlet weak var tableView: UITableView!
    
    var items = ["item1" , "item2", "item3","item4","item5","item6","item7"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.dataSource = self
        tableView.delegate = self
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(addItem))
        
    }
    
    @objc func addItem(){
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "InputViewController") as! InputViewController
        vc.delegate = self
        
        navigationController?.pushViewController(vc, animated: true)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .default, reuseIdentifier: nil)
        
        let item = items[indexPath.row]
        
        cell.textLabel?.text = item
        
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at:indexPath, animated: true)
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let detailsVC = storyboard.instantiateViewController(withIdentifier: "DetailsViewController")as! DetailsViewController
        
        detailsVC.itemTitle = items[indexPath.row]
        
        navigationController?.pushViewController(detailsVC, animated: true)
    }
    
    func didGetData(data: String) {
        items.append(data)
        tableView.reloadData()
    }
    

}
