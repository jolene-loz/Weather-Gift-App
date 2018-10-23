//
//  WeatherLocation.swift
//  WeatherGift
//
//  Created by J. Lozano on 10/20/18.
//  Copyright © 2018 J. Lozano. All rights reserved.
//

import Foundation
import Alamofire

//gives app wide scope
class WeatherLocation {
    var name = ""
    var coordinates = ""
    
    func getWeather(){
        let weatherURL = urlBase + urlAPIKey + coordinates
        print(weatherURL)
        Alamofire.request(weatherURL).responseJSON { response in
            print(response)
        }
    }
}
