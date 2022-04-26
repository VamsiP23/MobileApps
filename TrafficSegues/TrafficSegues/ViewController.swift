//
//  ViewController.swift
//  TrafficSegues
//
//  Created by Putti, Sri Vamsi K on 1/5/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var yB: UIButton!
    @IBOutlet var gB: UIButton!
    @IBOutlet var segueSwitch: UISwitch!
    override func viewDidLoad() {
        super.viewDidLoad()
    }
   
    @IBAction func yPressed(_ sender: Any) {
        performSegue(withIdentifier: "Yellow", sender: nil)
    }
    
    @IBAction func greenPressed(_ sender: Any) {
            performSegue(withIdentifier: "Green", sender: nil)
        
    }
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        if segueSwitch.isOn {
            return true
        } else {
            return false
        }
    }
    
}

