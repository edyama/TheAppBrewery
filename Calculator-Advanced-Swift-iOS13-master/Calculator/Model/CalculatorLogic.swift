//
//  CalculatorLogic.swift
//  Calculator
//
//  Created by Ed Yama on 30/08/21.
//  Copyright © 2021 London App Brewery. All rights reserved.
//

import Foundation

struct CalculatorLogic {
    
    // MARK: - Properties
    
    private var number: Double?
    
    // MARK: - Methods
    
    mutating func setNumber(_ number: Double) {
        self.number = number
    }
    
    func calculate(symbol: String) -> Double? {
        if let n = number {
            if symbol == "+/-" {
                return n * -1
            } else if symbol == "AC" {
                return 0
            } else if symbol == "%" {
                return n / 100
            }
        }
        return nil
    }
}
