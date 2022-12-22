//
//  ProtocolViewController.swift
//  PassingDataApp
//
//  Created by Melih Yuvacı on 23.12.2022.
//

import UIKit

class ProtocolViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func sendProtocolButtonClicked(_ sender: UIButton) {
        dismiss(animated: true,completion: nil)
    }
    

}
