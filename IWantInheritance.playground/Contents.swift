
import UIKit

class Person {
    var eyeColor = "Blue"
    var name: String
    var speed = "10 MPH"
    var benchPress = "300 LBS"
    
    init(name: String) {
        self.name = name
    }
    
    func catchPhrase() -> String {
        return "Hi, I'm an average person"
    }
    
}

var kit = Person(name:"Jon")

class Animorph: Person {
    var animalType = "Dog"
    
    convenience init(type: String, name:String) {
        self.init(name: name)
        self.animalType = type
        // customize speed for an animorph
        self.speed = "25 MPH"
    }
    
    override func catchPhrase() -> String {
        return "I can turn into a cool animal!"
    }
}

print (kit.eyeColor)

var dolphin = Animorph(type: "Dolphin", name: "Jack")

print(dolphin.eyeColor)

print("\(kit.catchPhrase()) and my top speed is: \(kit.speed)")

print("\(dolphin.catchPhrase()) and my top speed is: \(dolphin.speed)")


class SuperHero: Person {
    var specialPower = "X-Ray Vision"
    var backstory = "Some truck hit some slime that had chemicals and now I'm super awesome"
    
    convenience init(name: String, press: String) {
        self.init(name: name)
        benchPress = press
    }
    
    override func catchPhrase() -> String {
        return "With great power do or do not to infinity and beyond!"
    }
    
}


var pukeMan = SuperHero(name: "Puke Man", press: "5000 LBS")

print("\(pukeMan.catchPhrase()) and my back story is: \(pukeMan.backstory)")
