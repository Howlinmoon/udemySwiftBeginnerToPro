import UIKit

// dictionaries


var webster: [String: String] = ["krill": "Any of the small crustaceaons", "fire": "A burning mass of material"]

var anotherDictionary:[Int: String] = [44: "My favorite number", 32: "A not so popular number"]

print(webster["krill"]!)
print(webster["dontExist"])

if let something = webster["dontExist"] {
    print(something)
} else {
    print("dontExist is not a key")
}

if let something = webster["fire"] {
    print(something)
} else {
    print("fire is not a key")
}

webster = [:]

if webster.isEmpty {
    print("The dictionary is empty")
}

if let something = webster["fire"] {
    print(something)
} else {
    print("fire is not a key")
}


var highScore: [String: Int] = ["Big Orc": 1000, "Lord Maxum": 250, "Doc": 5000, "Space": 15000, "Darth Gamer": 125]

for (user, score) in highScore {
    print("User: \(user) scored: \(score)")
}
