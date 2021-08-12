//
//  ViewController.swift
//  Tipsy
//
//  Created by Angela Yu on 09/09/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class CalculatorViewController: UIViewController {

    // MARK: - Proprieties
    
    var tip = 102.4
    var tipPercentage = 0.1
    var splitNumber = 2.0
    var calculateTip = 0.0
    
    @IBOutlet weak var billTextField: UITextField!
    @IBOutlet weak var zeroPctButton: UIButton!
    @IBOutlet weak var tenPctButton: UIButton!
    @IBOutlet weak var twentyPctButton: UIButton!
    @IBOutlet weak var splitNumberLabel: UILabel!
    
    // MARK: - Methods

    @IBAction func tipChanged(_ sender: UIButton) {
        billTextField.endEditing(true)
        
        switch sender.titleLabel?.text {
        case "0%":
            tipPercentage = 0.0
            zeroPctButton.isSelected = true
            tenPctButton.isSelected = false
            twentyPctButton.isSelected = false
        case "20%":
            tipPercentage = 0.2
            zeroPctButton.isSelected = false
            tenPctButton.isSelected = false
            twentyPctButton.isSelected = true
        default:
            tipPercentage = 0.1
            zeroPctButton.isSelected = false
            tenPctButton.isSelected = true
            twentyPctButton.isSelected = false
        }
    }
    
    @IBAction func stepperValueChanged(_ sender: UIStepper) {
        splitNumber = sender.value
        splitNumberLabel.text = String(format: "%.0f", splitNumber)
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        tip = Double(billTextField.text ?? "102.4") ?? 102.4
        
        calculateTip = (tip + tip * tipPercentage) / splitNumber

        if let vc = storyboard?.instantiateViewController(identifier: "Results") as? ResultsViewController {
            vc.percentageTip = String(format: "%.0f", tipPercentage * 100)
            vc.splitNumber = String(format: "%.0f", splitNumber)
            vc.calculateTip = String(format: "%.2f", calculateTip)
            present(vc, animated: true)
        }
    }
}

