//
//  ProtocolViewController.swift
//  PassingDataApp
//
//  Created by Melih Yuvacı on 23.12.2022.
//

import UIKit

protocol protocolViewControllerDelegate{
    func sendData(data: String)
}

class ProtocolViewController: UIViewController {
    
    @IBOutlet weak var textField: UITextField!
    
    var delegate : protocolViewControllerDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        textField.text = ""
    }
    
    @IBAction func sendProtocolButtonClicked(_ sender: UIButton) {
        
        if textField.text != nil {
            self.delegate?.sendData(data: textField.text!)
        }
        dismiss(animated: true,completion: nil)
    }
    

}
