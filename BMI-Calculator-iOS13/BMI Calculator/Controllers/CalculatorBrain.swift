//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Ed Yama on 12/07/21.
//  Copyright © 2021 Angela Yu. All rights reserved.
//

import UIKit

struct CalculatorBrain {
    
    // MARK: - Proprieties
    
    var bmi: BMI?
    
    // MARK: - Methods
    
    func getBMIValue() -> String {
        let bmi1DecimalDigit = String(format: "%.1f", bmi?.value ?? "0.0")
        return bmi1DecimalDigit
    }
    
    func getAdvice() -> String {
        return bmi?.advice ?? "No advices"
    }
    
    func getColor() -> UIColor {
        return bmi?.color ?? .white
    }
    
    mutating func calculateBmi(_ weight: Float, _ height: Float) {
        let bmiValue = weight / (height * height)

        if bmiValue < 18.5 {
            bmi = BMI(value: bmiValue, advice: "Eat more pies!", color: #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1))
        } else if bmiValue < 24.9 {
            bmi = BMI(value: bmiValue, advice: "Fit as a fiddle!", color: #colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1))
        } else {
            bmi = BMI(value: bmiValue, advice: "Eat less pies!", color: #colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1))
        }
    }
}
