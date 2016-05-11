//
//  ViewController.swift
//  experimenting-with-classes
//
//  Created by jim Veneskey on 5/11/16.
//  Copyright © 2016 Jim Veneskey. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let porsche = Vehicle()
        // indirectly add mileage
        porsche.enterMiles(300)
        print("The Porsche odometer is: \(porsche.odometer)")
        // try to directly manipulate the odometer
        porsche.odometer = 100
        print("The Porsche odometer is now: \(porsche.odometer)")

        porsche.odometer = 1000
        print("The Porsche odometer is now: \(porsche.odometer)")

        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

