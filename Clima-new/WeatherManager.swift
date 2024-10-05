//
//  WeatherManager.swift
//  Clima
//
//  Created by Md Rakib Hossen on 5/10/24.
//  Copyright © 2024 App Brewery. All rights reserved.
//

import Foundation
struct WeatherManager {
    let weatherURL = "https://api.openweathermap.org/data/2.5/weather?appid=44d332633b58923b958031594561f2fe&units=metric"
    
    func fetchWeather(cityName : String){
        let urlString = "\(weatherURL)&q=\(cityName)"
        performRequest(urlString: urlString)
        
    }
    
    func performRequest (urlString : String){
//        print(urlString)
        if let url = URL(string: urlString){
            let session = URLSession(configuration: .default)
               let task = session.dataTask(with: url) { (data, response, error) in
                if error != nil{
                    print(error!)
                    return
                }
                if let safeData = data{
                    let dataString = String(data: safeData, encoding: .utf8)
                    print(dataString!)
                }
            }
            task.resume()
        }
    }
}
