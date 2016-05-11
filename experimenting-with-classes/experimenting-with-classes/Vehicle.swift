//
//  Vehicle.swift
//  experimenting-with-classes
//
//  Created by jim Veneskey on 5/11/16.
//  Copyright © 2016 Jim Veneskey. All rights reserved.
//

import Foundation

class Vehicle {
    private var engine = "4 Cylinder"
    private var color = "Red"
    private var _odometer = 0
    
    // GETTER / SETTER / ACCESSORS / MUTATORS
    
    // computed property
    var odometer: Int {
        get {
            return _odometer
        }
        
        set {
            if newValue > _odometer {
                _odometer = newValue
            }
        }
    }
    
    init(engine: String, color: String) {
        self.engine = engine
        self.color = color
    }
    
    init() {
        
    }
    
    func enterMiles(miles: Int) {
        odometer += miles
    }
}