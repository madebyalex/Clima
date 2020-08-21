//
//  WeatherData.swift
//  Clima
//
//  Created by Alexander on 14.08.2020.
//  Copyright © 2020 Alexander. All rights reserved.
//

import Foundation

struct Main: Codable {
    let temp: Double
}

struct Weather: Codable {
    var main: String
    var description: String
}

struct ListItem: Codable {
    let name: String
    let main: Main
    let weather: [Weather]
}

struct WeatherData: Codable {
    var list: [ListItem]
}
