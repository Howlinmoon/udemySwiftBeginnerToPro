//
//  Enemy.swift
//  rgpoop
//
//  Created by jim Veneskey on 5/20/16.
//  Copyright © 2016 Jim Veneskey. All rights reserved.
//

import Foundation

class Enemy: Character {
    
    var loot: [String] {
        return ["Rusty Dagger", "Cracked Buckler"]
    }
    
    var type: String {
        return "Grunt"
    }

    func dropLoot() -> String? {
        if !isAlive {
            let rand = Int(arc4random_uniform(UInt32(loot.count)))
            print("The random loot item to drop is #\(rand)")
            return loot[rand]
        }
        
        return nil
    }
    
    
}

