//
//  Place.swift
//  Places
//
//  Created by Rick Wolter on 8/30/18.
//  Copyright © 2018 RNWolter. All rights reserved.
//

import Foundation

struct Placs{
    
    let name: String
    let location: (latitude: Double, longitude: Double)
    
    init(name: String, latitude: Double, longitude: Double){
        
        self.name = name
        self.location = (latitude: latitude, longitude: longitude)
        
        
    }
    
    
}
