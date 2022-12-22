//
//  ViewController.swift
//  PassingDataApp
//
//  Created by Melih Yuvacı on 23.12.2022.
//

import UIKit

class ViewController: UIViewController, protocolViewControllerDelegate {
   
    

    @IBOutlet weak var textLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        NotificationCenter.default.addObserver(self, selector: #selector(didNotificationArrive(data:)), name: .init(rawValue: "notifiyData"), object: nil)

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
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "toProtocolVC" {
            let destinationVC = segue.destination as! ProtocolViewController
            destinationVC.delegate = self
            
        }else if segue.identifier == "toClosureVC"{
            let destinationVC = segue.destination as! ClosureViewController
            destinationVC.dataClosure = { data in
                self.textLabel.text = data
            }

            
        }else if segue.identifier == "toNotificationVC"{
            let destinationVC = segue.destination as! NotificationCenterViewController

        }
    }
    
    func sendData(data: String) {
        textLabel.text = data
    }
    
    @objc func didNotificationArrive(data: Notification){
        textLabel.text = data.object as? String
    }

}

