//
//  DetailsViewController.swift
//  projectday7
//
//  Created by sunbeam on 06/01/25.
//

import UIKit

class DetailsViewController: UIViewController {
    
    var itemTitle:String?
    
    
    @IBOutlet weak var labelTitle: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.title = "Details"
        labelTitle.text = itemTitle

        
       
    }
    

    

}
