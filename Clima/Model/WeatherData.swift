//
//  WeatherData.swift
//  Clima
//
//  Created by Alexander on 14.08.2020.
//  Copyright © 2020 Alexander. All rights reserved.
//

import Foundation

struct WeatherData: Codable {
    struct List: Codable {
        let name: String
    }
    
    var lists: [List]
}
