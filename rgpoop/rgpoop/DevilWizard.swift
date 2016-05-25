//
//  DevilWizard.swift
//  rgpoop
//
//  Created by jim Veneskey on 5/23/16.
//  Copyright © 2016 Jim Veneskey. All rights reserved.
//

import Foundation

class DevilWizard: Enemy {
    override var loot: [String] {
        return ["Magic Wand", "Dark Amulet", "Salted Pork"]
    }
    
    override var type: String {
        return "Devil Wizard"
    }
}
