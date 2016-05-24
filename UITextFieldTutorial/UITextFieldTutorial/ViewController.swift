//
//  ViewController.swift
//  UITextFieldTutorial
//
//  Created by Daniele Donzelli on 08/11/15.
//  Copyright © 2015 Daniele Donzelli. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var myLabel: UILabel!
    var surnameTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        createSurnameTextField()
        
        //Set the delegate
        nameTextField.delegate = self
        surnameTextField.delegate = self
    }
    
    // Create the button programattically
    func createSurnameTextField() {
        surnameTextField = UITextField()
        surnameTextField.frame = CGRectMake(110, 160, 150, 30)
        surnameTextField.borderStyle = .RoundedRect
        surnameTextField.clearButtonMode = .WhileEditing
        surnameTextField.placeholder = "Insert surname"
        self.view.addSubview(surnameTextField)
    }

    @IBAction func buttonPressed(sender: AnyObject) {
        
        myLabel.text = "Hello, \(nameTextField.text!) \(surnameTextField.text!)!"
    }
    
    // MARK: - UITextFieldDelegate
    
    // Called when the editing is about to begin
    func textFieldShouldBeginEditing(textField: UITextField) -> Bool {
        print("Editing is about to begin")
        return true
    }
    
    // Called when the editing is began
    func textFieldDidBeginEditing(textField: UITextField) {
        textField.backgroundColor = UIColor.greenColor()
        print("Editing is began")
    }
    
    // Called when the editing is about to end
    func textFieldShouldEndEditing(textField: UITextField) -> Bool {
        print("Editing is about to end")
        return true
    }
    
    // Called when the editing ended
    func textFieldDidEndEditing(textField: UITextField) {
        textField.backgroundColor = UIColor.whiteColor()
        print("Editing ended")
    }
    
    // Called whenever the user types a new character in the text field or deletes an existing character. For example, you can use this method to disallow the use of a certain character, in this case “$” character
    func textField(textField: UITextField, shouldChangeCharactersInRange range: NSRange, replacementString string: String) -> Bool {
        
        if string == "$" {
            
            return false
        }
        else {
            
            return true
        }
    }
    
    // Called when the clearButton is pressed
    func textFieldShouldClear(textField: UITextField) -> Bool {
        print("Clear button pressed")
        return true
    }
    
    // Called when the keyboard return key is pressed
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        if nameTextField.isFirstResponder() {
            
            surnameTextField.becomeFirstResponder()
        }
        
        else {
            
            surnameTextField.resignFirstResponder()
        }
        
        return true
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

