
import UIKit

var balance = 100.00

class Vehicle {
    private var engine = "4 Cylinder"
    private var color = "Red"
    private var odometer = 0
    
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


var car1 = Vehicle(engine: "V8", color: "Victory Red")

var car2 = Vehicle()

print(car1.color)
print(car2.color)

var car3 = Vehicle()

var vehicles = [Vehicle]()

vehicles.append(car1)
vehicles.append(car2)
vehicles.append(car3)

print(vehicles)


car1.enterMiles(25)
print("car1 mileage = \(car1.odometer)")
car1.odometer = 2000
print("car1 mileage = \(car1.odometer)")

