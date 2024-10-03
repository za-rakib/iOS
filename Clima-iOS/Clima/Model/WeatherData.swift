//
//  WeatherData.swift
//  Clima
//
//  Created by Navid Anindya on 29/9/24.
//  Copyright © 2024 App Brewery. All rights reserved.
//

import Foundation

struct WeatherData: Codable {
    let name: String
    let id: Int
    var main: Main
    let weather :[Weather]
} 

struct Main: Codable {
    let temp: Double
}

struct Weather: Codable{
    let id : Int
    let description : String
}
