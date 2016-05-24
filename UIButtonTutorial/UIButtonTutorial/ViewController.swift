//
//  ViewController.swift
//  UIButtonTutorial
//
//  Created by Daniele Donzelli on 14/04/16.
//  Copyright © 2016 Daniele Donzelli. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Call the function to create the button programmatically
        cretaeProgButton()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // Action for the button created via Interface Builder
    @IBAction func ibButtonPressed(sender: AnyObject) {
        
        print("Interface Builder Button Pressed!!")
    }
    
    // Function to create the button programmatically
    func cretaeProgButton()  {
        let progButton = UIButton()
        progButton.frame = CGRectMake(20, 200, 100, 30)
        progButton.setImage(UIImage(named: "progButton"), forState: .Normal)
        progButton.addTarget(self, action: #selector(progButtonPressed), forControlEvents: .TouchUpInside)
        self.view.addSubview(progButton)
    }
    
    // Action for the button created programmatically
    func progButtonPressed(sender:UIButton!) {
        print("progButton pressed")
    }

}

