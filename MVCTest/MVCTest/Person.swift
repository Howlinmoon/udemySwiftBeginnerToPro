//
//  Person.swift
//  MVCTest
//
//  Created by jim Veneskey on 6/15/16.
//  Copyright © 2016 Jim Veneskey. All rights reserved.
//

import Foundation

class Person {
    private var _firstName: String!
    private var _lastName: String!
    
    var firstName: String! {
        
        get {
            return _firstName
        }
        
        set {
            if newValue != nil && newValue != "" {
                _firstName = newValue
            }
        }
    }
    
    var lastName: String {
        return _lastName
    }
    
    
    init(first: String, last:String) {
        self._firstName = first
        self._lastName = last
    }
    
    
    var fullName: String {
        return "\(_firstName) \(_lastName)"
    }
}