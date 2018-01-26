//
//  CurrentWeather.swift
//  Alamofire-Weather
//
//  Created by djchai on 12/11/17.
//  Copyright © 2017 Duc Tran. All rights reserved.
//

// JSON: javaScript notation
import Foundation


class CurrentWeather {
    
    let temperature : Int?
    let humidity : Int?
    let precipProbability : Int?
    let summary : String?
    let icon : String?
    
    struct WeatherKeys {
        static let temperature = "temperature"
        static let humidity = "humidity"
        static let precipProbability = "precipProbability"
        static let summary = "summary"
        static let icon = "icon"
    }
    
    init(weatherDictionary: [String : Any]) {
        temperature = weatherDictionary[WeatherKeys.temperature] as? Int
        if let humidityDouble = weatherDictionary[WeatherKeys.humidity] as? Double {
            humidity = Int(humidityDouble * 100)
        } else {
            humidity = nil
        }
        if let precipDbl = weatherDictionary[WeatherKeys.precipProbability] as? Double {
            precipProbability = Int(precipDbl * 100)
        } else {
            precipProbability = nil
        }
        summary = weatherDictionary[WeatherKeys.summary] as? String
        icon = weatherDictionary[WeatherKeys.icon] as? String
    }
    
    /* JSON data from DarkSky.net public API
     
     {
     latitude: 37.8267,
     longitude: -122.4233,
     timezone: "America/Los_Angeles",
     currently: {
         time: 1513051187,
         summary: "Clear",
         icon: "clear-night",
         nearestStormDistance: 415,
         nearestStormBearing: 357,
         precipIntensity: 0,
         precipProbability: 0,
         temperature: 52.72,
         apparentTemperature: 52.72,
         dewPoint: 36.53,
         humidity: 0.54,
         pressure: 1025.85,
         windSpeed: 1.25,
         windGust: 3.09,
         windBearing: 7,
         cloudCover: 0.06,
         uvIndex: 0,
         visibility: 10,
         ozone: 291.43
        }
     }
     
    */
    
}
































