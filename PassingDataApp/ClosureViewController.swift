//
//  ClosureViewController.swift
//  PassingDataApp
//
//  Created by Melih Yuvacı on 23.12.2022.
//

import UIKit

class ClosureViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!
    
    var dataClosure: ((String) -> ())?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        textField.text = ""
        
    }
    
    
    @IBAction func closureButtonClicked(_ sender: UIButton) {
        if textField.text != nil {
            dataClosure?(textField.text!)
        }
        dismiss(animated: true,completion: nil)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
