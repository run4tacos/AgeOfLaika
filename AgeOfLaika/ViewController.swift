//
//  ViewController.swift
//  AgeOfLaika
//
//  Created by Gordon Gauss on 5/22/15.
//  Copyright (c) 2015 Gordon Gauss. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var dogNameTextField: UITextField!
    @IBOutlet weak var dogAgeTextField: UITextField!
    @IBOutlet weak var convertedAgeLabel: UILabel!
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
   
    @IBAction func convertButtonPressed(sender: UIButton) {
        
        var convertedAgeOfDog = dogAgeTextField.text.toInt()!
        convertedAgeOfDog *= 7
        convertedAgeLabel.text = dogNameTextField.text + " is \(convertedAgeOfDog) in human years."
        convertedAgeLabel.hidden = false
        convertedAgeLabel.textColor = UIColor.greenColor()
        dogNameTextField.resignFirstResponder()
        dogAgeTextField.resignFirstResponder()
        
    }

    

}

