//
//  DragImg.swift
//  MyLittleMonster
//
//  Created by jim Veneskey on 6/8/16.
//  Copyright © 2016 Jim Veneskey. All rights reserved.
//

import Foundation
import UIKit

class DragImg: UIImageView {
    
    var originalPosition: CGPoint!
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        // center position
        originalPosition = self.center
    }
    
    override func touchesMoved(touches: Set<UITouch>, withEvent event: UIEvent?) {
        if let touch = touches.first {
            // grab the current location of the touch
            let position = touch.locationInView(self.superview)
            // move our center to this new position...
            self.center = CGPointMake(position.x, position.y)
            
        }
    }
    
    override func touchesEnded(touches: Set<UITouch>, withEvent event: UIEvent?) {
        print("SNAP! - putting this item back!")
        self.center = originalPosition
    }
}