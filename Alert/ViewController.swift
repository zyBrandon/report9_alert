//
//  ViewController.swift
//  Alert
//
//  Created by 周越 on 2018/11/24.
//  Copyright © 2018年 周越. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func action1(_ sender: Any) {
        let alert = UIAlertController(title: "alert", message: "login", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "cancel", style: .cancel, handler: { (action) in
        }))
        alert.addTextField { (textField) in
            textField.placeholder = "name"
        }
        alert.addTextField { (textField) in
            textField.placeholder = "password"
            textField.isSecureTextEntry = true
        }
        present(alert, animated: true, completion: nil)
    }
    
    @IBAction func action3(_ sender: Any) {
        let action = UIAlertController(title: "action_sheet", message: "please", preferredStyle: .actionSheet)
        action.addAction(UIAlertAction(title: "red", style: .default, handler: { (action) in
            self.view.backgroundColor = UIColor.red
        }))
        
        action.addAction(UIAlertAction(title: "green", style: .destructive, handler: { (action) in
            self.view.backgroundColor = UIColor.green
        }))
        
        action.addAction(UIAlertAction(title: "black", style: .cancel, handler: { (action) in
            self.view.backgroundColor = UIColor.black
        }))
        
        present(action, animated: true, completion: nil)
    }
    

}

