//
//  Person.swift
//  defaults-are-fun
//
//  Created by jim Veneskey on 7/14/16.
//  Copyright © 2016 Jim Veneskey. All rights reserved.
//

import Foundation

// inheritance required to be able to save this class data via NSUserDefaults...

class Person: NSObject, NSCoding {
    var firstName: String!
    var lastName: String!
    
    init (first:String, last:String) {
        firstName = first
        lastName = last
    }
    
    // convenience initializer
    override init() {

    }
    
    required convenience init?(coder aDecoder: NSCoder) {
        self.init()
        self.firstName = aDecoder.decodeObjectForKey("firstName") as? String
        self.lastName = aDecoder.decodeObjectForKey("lastName") as? String
        
    }
    
    func encodeWithCoder(aCoder: NSCoder) {
        aCoder.encodeObject(self.firstName, forKey: "firstName")
        aCoder.encodeObject(self.lastName,  forKey: "lastName")
    }
}