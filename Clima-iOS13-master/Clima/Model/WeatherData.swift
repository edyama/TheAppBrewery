//
//  WeatherData.swift
//  Clima
//
//  Created by Ed Yama on 11/08/21.
//  Copyright © 2021 App Brewery. All rights reserved.
//

import Foundation

struct WeatherData: Codable {
    let name: String
    let weather: [Weather]
    let main: Main
}

struct Weather: Codable {
    let description: String
    let id: Int
}

struct Main: Codable {
    let temp: Double
}
