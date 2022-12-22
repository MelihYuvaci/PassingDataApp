//
//  NotificationCenterViewController.swift
//  PassingDataApp
//
//  Created by Melih Yuvacı on 23.12.2022.
//

import UIKit

class NotificationCenterViewController: UIViewController{

    
    @IBOutlet weak var textField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        textField.text = ""
    }
    

    @IBAction func notificationButtonClicked(_ sender: UIButton) {
        
        if textField.text != nil {
            NotificationCenter.default.post(name: .init(rawValue: "notifiyData"), object: textField.text!, userInfo: nil)
        }
        
        dismiss(animated: true,completion: nil)
    }

}
