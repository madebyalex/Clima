//
//  WeatherManager.swift
//  Clima
//
//  Created by Alexander on 13.08.2020.
//  Copyright © 2020 Alexander. All rights reserved.
//

import Foundation

struct WeatherManager {
    let weatherURL = "https://api.openweathermap.org/data/2.5/find?units=metric&appid=f808cd7c58b1be68e20729fc8d92ceed"
    
    func fetchWeather(cityName: String) {
        let urlString = "\(weatherURL)&q=\(cityName)"
        performRequest(urlString: urlString)
    }
    
    func performRequest(urlString: String) {
        // 1. Create URL
        if let url = URL(string: urlString) {
            
            // 2. Create a session
            let session = URLSession(configuration: .default)
            
            // 3. Give the session a task
            let task = session.dataTask(with: url, completionHandler: handle(data:response:error:))
            
            // 4. Start the task
            task.resume()
        }
    }
    
    func handle(data: Data?, response: URLResponse?, error: Error?) -> Void {
        // 👆 Mentioning the " -> Void" is optional
        if error != nil {
            print(error!)
            return
        }
        
        if let safeData = data {
            let dataString = String(data: safeData, encoding: .utf8)
            print(dataString!)
        }
    }
}
