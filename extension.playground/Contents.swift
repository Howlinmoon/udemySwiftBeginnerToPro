//: Playground - noun: a place where people can play

import UIKit

var account1:Double = 400.32
var account2:Double = 500.12
var account3:Double = 600.14


print("$\(account1)")
print("$\(account2)")
print("$\(account3)")


extension Double {
    
    var currency: String {
        return "$\(self)"
    }
}

print(account1.currency)
print(account2.currency)
print(account3.currency)
