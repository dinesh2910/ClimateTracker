//
//  ClimateManager.swift
//  ClimateTracker
//
//  Created by Dinesh Danda on 2/24/20.
//  Copyright © 2020 Dinesh Danda. All rights reserved.
//

import Foundation

struct ClimateManager {
    let weatherURL = "http://api.openweathermap.org/data/2.5/weather?appid=fb62d0bcce3c31340459241cae690c35&units=metric"
    
    func weatherName(cityName: String) {
        let urlStirng = "\(weatherURL)&q=\(cityName)"
        print(urlStirng)
        
    }
}
