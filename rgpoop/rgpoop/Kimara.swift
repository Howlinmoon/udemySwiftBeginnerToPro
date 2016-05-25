//
//  Kimara.swift
//  rgpoop
//
//  Created by jim Veneskey on 5/20/16.
//  Copyright © 2016 Jim Veneskey. All rights reserved.
//

import Foundation

class Kimara: Enemy {
    // damage reduction for 15 or less
    
    let IMMUNE_MAX = 15
    
    override var loot: [String] {
        return ["Tough Hide", "Kimara Venom", "Rare Trident"]
    }
    
    override var type: String {
        return "Kimara"
    }
    
    override func attemptAttack(attackPwr: Int) -> Bool {
        if attackPwr >= IMMUNE_MAX {
            return super.attemptAttack(attackPwr)
        } else {
            return false
        }
    }
}