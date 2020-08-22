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
    let main: String
    let description: String
    let id: Int
}

struct ListItem: Codable {
    let name: String
    let main: Main
    let weather: [Weather]
}

struct WeatherData: Codable {
    let list: [ListItem]
}
