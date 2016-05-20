//: Playground - noun: a place where people can play

import UIKit

// create an optional variable
var lotteryWinnings: Int?

lotteryWinnings = 500

// unwrap an unitialized optional
if let winnings = lotteryWinnings {
    print(winnings)
} else {
    print("You ain't won shit")
}

class Car {
    var model: String?
}

var vehicle: Car?

if let v = vehicle {
    if let m = v.model {
        print("The model of the car is \(m)")
    }
}

// compound version of the above

if let v = vehicle, let m = v.model {
    print("The model of the car is \(m)")
}

vehicle = Car()
vehicle?.model = "Corvette"
if let v = vehicle, let m = v.model {
    print("The model of the car is \(m)")
}



var cars: [Car]?

cars = [Car]()

if let carArr = cars {
    if carArr.count > 0 {
        // do stuff
    }
}

// better

if let carArr = cars where carArr.count > 0 {
    // do stuff if not nil and if more than 0 elements
    
} else {
    cars?.append(Car())
    print(cars?.count)
}

var coolArray = ["a", "b", "c"]
print("length of coolArray is: \(coolArray.count)")


class Person {
    private var _age: Int!
    
    var age: Int {
        if _age == nil {
            _age = 42
        }
        
        return _age
    }
    
    func setAge(newAge: Int) {
        self._age = newAge
    }
}

var jack = Person()
//jack.setAge(25)
print(jack.age)


class Dog {
    var species: String
    
    init(someSpecies: String) {
        self.species = someSpecies
    }
}

var fido = Dog(someSpecies: "Domestic Mutt")

print("Fido is type: \(fido.species)")
