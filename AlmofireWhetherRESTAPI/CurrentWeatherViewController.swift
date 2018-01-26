//
//  CurrentWeatherViewController.swift
//  Alamofire-Weather
//


import UIKit
import Alamofire

class CurrentWeatherViewController: UIViewController {

    @IBOutlet weak var templ: UILabel!
    
    let forecastAPIKey = "ebf2b3b37584b7b020ca363a80cdb9b7"
    let coordinate: (lat: Double, long: Double) = (37.804364,-122.271114)
    var forecastService: ForecastService!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    
        
        forecastService = ForecastService(APIKey: forecastAPIKey)
        forecastService.getCurrentWeather(latitude: coordinate.lat, longitude: coordinate.long) { (currentWeather) in
            if let currentWeather = currentWeather {
                DispatchQueue.main.async {
                    if let humidity = currentWeather.humidity {
                        self.templ.text = "\(humidity)"
                    } else {
                        self.templ.text = "-"
                    }
                }
            }
        }
    }

   
}
