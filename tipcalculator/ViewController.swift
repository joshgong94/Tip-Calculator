//
//  ViewController.swift
//  tipcalculator
//
//  Created by YongBai Gong on 2/11/19.
//  Copyright © 2019 Yongbai Gong. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tipLabel: UITextField!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var billLabel: UITextField!
    @IBOutlet weak var tipControl: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
    }

    @IBAction func onTap(_ sender: Any) {
        
        // Code that runs when the user taps on the screen
        print("Hello" )
        
        // Click anywhere on screen other than box to get rid of keyboard
        view.endEditing(true)
    }
    
    
    @IBAction func calculateTip(_ sender: Any) {
        // Get Bill amount
        
        // If not valid, change to zero
        let tipPercentages = [0.15, 0.18, 0.2]
        
        let bill = Double(billLabel.text!) ?? 0
        // billField doesn't work. billLabel seems to only allow
        // one number as an input
        
        // Calculate Tip and Total
        
        let tip = bill*tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill + tip
        // Update the Tip and Total labels
        
        tipLabel.text = String(format: "$%.2f", tip)//"$\(tip)"//takes variable as input
        totalLabel.text = String(format: "$%.2f", total)//"S\(total)"
        
    }
    
    
}

