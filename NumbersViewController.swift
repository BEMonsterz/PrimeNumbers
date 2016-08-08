//
//  NumbersViewController.swift
//  PrimeNumbers
//
//  Created by Bryan Ayllon on 8/6/16.
//  Copyright © 2016 Bryan Ayllon. All rights reserved.
//

import UIKit

class NumbersViewController: UIViewController {

    @IBOutlet weak var inputText :UITextField!
    @IBOutlet weak var theLabel :UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    
    @IBAction func whenButtonIsPressed() {
        if (Int(inputText.text!) == nil || inputText.text! == "" || inputText.text!.characters.contains(".")) {
            theLabel.text = "Incorrect Input"
        } else {
            let someInput = Int(inputText.text!)
            if(someInput < 0 || someInput > 100) {
                theLabel.text = "Incorrect Input"
            } else if (someInput! % 2 == 0 || someInput == 1) {
                theLabel.text = "Incorrect Input"
            } else {
                var primeNumber = true
                for x in (2...someInput!-1).reverse() {
                    if someInput! % x == 0 {
                        primeNumber = false
                        theLabel.text = "Incorrect Input"
                    }
                }
                if primeNumber == true {
                    theLabel.text = "Prime True"
                }
            }
            
        }
        
    }
    
}
