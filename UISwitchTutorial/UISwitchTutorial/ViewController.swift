//
//  ViewController.swift
//  UISwitchTutorial
//
//  Created by Daniele Donzelli on 24/05/16.
//  Copyright © 2016 Daniele Donzelli. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var ibSwitch: UISwitch!
    @IBOutlet weak var ibStateLabel: UILabel!
    @IBOutlet weak var progStateLabel: UILabel!
    var progSwitch: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Create prog UISwitch
        createProgSwitch()
        
        // Call "progSwitchClicked" function when the Switch is clicked
        progSwitch.addTarget(self, action: #selector(progSwitchClicked), forControlEvents: .ValueChanged)
    }
    
    func createProgSwitch() {
        progSwitch = UISwitch()
        progSwitch.frame = CGRectMake(160, 150, 0, 0)
        progSwitch.on = false
        view.addSubview(progSwitch)
    }
    
    func progSwitchClicked(sender: UISwitch) {
        if progSwitch.on {
            progStateLabel.text = "Prog Switch is ON"
        }
        else {
            progStateLabel.text = "Prog Switch is OFF"
        }
    }
    

    @IBAction func ibSwitchClicked(sender: AnyObject) {
        
        if ibSwitch.on {
            ibStateLabel.text = "IB Switch is ON"
        }
        else {
            ibStateLabel.text = "IB Switch is OFF"
        }
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

