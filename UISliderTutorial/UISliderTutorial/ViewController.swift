//
//  ViewController.swift
//  UISliderTutorial
//
//  Created by Daniele Donzelli on 29/05/16.
//  Copyright © 2016 Daniele Donzelli. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var ibSlider: UISlider!
    @IBOutlet weak var ibSliderValue: UILabel!
    @IBOutlet weak var progSliderValue: UILabel!
    var progSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Call "createProgSlider"
        createProgSlider()
        
        // Call "progSliderSetValue" function when the Slider change value
        progSlider.addTarget(self, action: #selector(progSliderSetValue), forControlEvents: .ValueChanged)
    }

    // Slider created via interface builder, it shows an Int value
    @IBAction func ibSliderSetValue(sender: UISlider) {
        let sliderValue = Int(sender.value)
        ibSliderValue.text = String(sliderValue)
    }
    
    func createProgSlider() {
        progSlider = UISlider()
        progSlider.frame = CGRectMake(18, 230, 339, 31)
        progSlider.minimumValue = 0
        progSlider.maximumValue = 100
        progSlider.continuous = true
        progSlider.tintColor = UIColor.redColor()
        self.view.addSubview(progSlider)
    }
    
    // Slider created programmatically, it shows a Float value
    func progSliderSetValue(sender: UISlider) {
        let sliderValue = Float(sender.value)
        progSliderValue.text = String(format: "%.2f", sliderValue)
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

