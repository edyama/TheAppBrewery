//
//  CoinModel.swift
//  ByteCoin
//
//  Created by Ed Yama on 13/08/21.
//  Copyright © 2021 The App Brewery. All rights reserved.
//

import Foundation

struct CoinModel {
    
    let rateValue: Double
    let currency: String
    
    var rateString: String {
        return String(format: "%.1f", rateValue)
    }
    
}
