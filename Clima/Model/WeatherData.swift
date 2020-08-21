//
//  WeatherData.swift
//  Clima
//
//  Created by Alexander on 14.08.2020.
//  Copyright © 2020 Alexander. All rights reserved.
//

import Foundation

struct WeatherData: Codable {
    var name: String
    
    enum CodingKeys: String, CodingKey {
        case name = "list"
    }
    
    enum ListKeys: String, CodingKey {
        case list
    }
    
    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        
        let list = try values.nestedContainer(keyedBy: ListKeys.self, forKey: .name)
        name = try list.decode(String.self, forKey: .list)

   }
}
