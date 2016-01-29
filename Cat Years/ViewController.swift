//
//  ViewController.swift
//  Cat Years
//
//  Created by Hoyoung Jung on 12/29/15.
//  Copyright © 2015 Hoyoung Jung. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet var dogAgeTextField: UITextField!
    @IBOutlet var resultLabel: UILabel!
    
    @IBAction func findAge(sender: AnyObject) {
        
        var dogAge = Int(dogAgeTextField.text!)!
        
        // first exclamation is for unwrapping the text so that swift understands that there will be an input as it is empty
        // second is for unwrapping so that swift understands that the input will be a number and not another type
        if dogAge==2{
            dogAge = 24
        }
        else if dogAge==1{
            dogAge = 15
        }
        else if dogAge<0{
            dogAge = 0
        }
        else{
            dogAge = 24 + ((dogAge-2)*4)
        }
        
        
        resultLabel.text = "You dog is \(dogAge) in dog years"
        // \(variable) prints the varialbe in a string.
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.dogAgeTextField.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // Closes the keyboard by pressing anywhere
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        
        self.view.endEditing(true)
        
    }
    
    // Closes the keyboard by pressing return
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        
        textField.resignFirstResponder()
        
        return true
    }
}

