//
//  ViewController.swift
//  E_Calculator
//
//  Created by cs_apple_08 on 9/12/19.
//  Copyright © 2019 E INC. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tipLabel: UILabel!
    
    
    @IBOutlet weak var totalLabel: UILabel!
    
    
    @IBOutlet weak var billField: UITextField!
    
    
    @IBOutlet weak var tipControl: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func onTap(_ sender: Any) {
        print("Hello")
        view.endEditing(true)
    }
    
    @IBAction func calculateTip(_ sender: Any) {
        //Get the Bill amount
        let bill = Double(billField.text!) ?? 0
        
        // Calcuate the Tip amount
        let tipPercentages = [0.15, 0.18, 0.20]
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill + tip
        
        
        //Update the tip total labels
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
        
        
        
    }
}

