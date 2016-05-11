// BooYa
// loop 200 times starting at 1
// if the value of the current iteration is a multiple of 3,
// print 'Boo'
// if the value of the current iteration is a multiple of 5,
// print 'Ya'
// if the value of the current iteration is a multiple of both,
// print 'BooYa'


import UIKit

for var counter in 1...200 {
    var output = ""
    if counter % 3 == 0 {
        output = "Boo"
    }
    
    if counter % 5 == 0 {
        output = output + "Ya"
    }
    
    if output.characters.count > 0 {
        print("\(output)")
    }
}
