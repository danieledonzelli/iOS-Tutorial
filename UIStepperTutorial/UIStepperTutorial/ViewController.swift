//
//  ViewController.swift
//  UIStepperTutorial
//
//  Created by Daniele Donzelli on 21/06/16.
//  Copyright © 2016 Daniele Donzelli. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var ibStepperValue: UILabel!
    @IBOutlet weak var progStepperValue: UILabel!
    var progStepper: UIStepper!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        createProgStepper()
        progStepper.addTarget(self, action: #selector(progStepperSetValue), forControlEvents: .ValueChanged)
    }
    
    // UIStepper created programmatically
    func createProgStepper() {
        progStepper = UIStepper()
        progStepper.frame = CGRectMake(140, 270, 0, 0)
        progStepper.maximumValue = 0
        progStepper.maximumValue = 100
        progStepper.autorepeat = true
        progStepper.continuous = true
        progStepper.tintColor = UIColor.redColor()
        self.view.addSubview(progStepper)
    }
    
    // Set the value for the stepper created programmatically
    func progStepperSetValue(sender: UIStepper!)  {
        let stepperValue = Int(sender.value)
        progStepperValue.text = String(stepperValue)
    }

    // Set the value for the stepper created by Interface Builder
    @IBAction func ibStepperSetValue(sender: UIStepper) {
        let stepperValue = Int(sender.value)
        ibStepperValue.text = String(stepperValue)
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

