//
//  LogInTableViewController.swift
//  LogInUI
//
//  Created by Mohit Mali on 06/09/23.
//

import UIKit

class LogInTableViewController: UITableViewController {
    
    @IBOutlet weak var tetEmail: UITextField!
    @IBOutlet weak var tetPassword: UITextField!
    
  
    override func viewDidLoad() {
        super.viewDidLoad()
        
        }
    
    @IBAction func butnLogINClicked(_ sender: UIButton) {
        
        let alert = UIAlertController(title: "this is my alert", message: "this is my msg", preferredStyle: .alert)
        let cencelbutton = UIAlertAction(title: "cencel", style: .cancel  ){(action) in
            print("cencel button")
        }
        alert.addAction(cencelbutton)
        present(alert,animated: true,completion: nil)
        
    }
    
    
}
extension LogInTableViewController{
    
}
