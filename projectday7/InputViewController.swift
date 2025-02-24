//
//  InputViewController.swift
//  projectday7
//
//  Created by sunbeam on 06/01/25.
//

import UIKit

class InputViewController: UIViewController {
    
    
    @IBOutlet weak var editTitle: UITextField!
    
    var delegate:GetDataDelegate?
    

    override func viewDidLoad() {
        super.viewDidLoad()

    
    }
    
    @IBAction func onSave(_ sender: Any) {
        
        delegate?.didGetData(data: editTitle.text!)
        navigationController?.popViewController(animated: true)
        
    }
    
   
    @IBAction func onCancel(_ sender: Any) {
        navigationController?.popViewController(animated: true)

    }
    
}
