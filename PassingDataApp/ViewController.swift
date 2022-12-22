//
//  ViewController.swift
//  PassingDataApp
//
//  Created by Melih Yuvacı on 23.12.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func protocolButtonClicked(_ sender: UIButton) {
        performSegue(withIdentifier: "toProtocolVC", sender: nil)
    }
    
    @IBAction func closureButtonClicked(_ sender: UIButton) {
        performSegue(withIdentifier: "toClosureVC", sender: nil)
    }
    
   
    @IBAction func notificationButtonClicked(_ sender: UIButton) {
        performSegue(withIdentifier: "toNotificationVC", sender: nil)
    }
    

}

