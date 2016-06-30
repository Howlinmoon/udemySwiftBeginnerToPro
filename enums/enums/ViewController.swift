//
//  ViewController.swift
//  enums
//
//  Created by jim Veneskey on 6/30/16.
//  Copyright © 2016 Jim Veneskey. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    enum Cars: String {
        case PORSCHE = "Porsche"
        case CHEVY = "Chevy"
        case PONTIAC = "Pontiac"
        case TESLA = "Tesla"
    }

    
    var carOfChoice: Cars!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        var car1 = Cars.PORSCHE
        var car2 = Cars.PONTIAC
        
        if car1.rawValue == car2.rawValue {
            
        }
        
        carOfChoice = Cars.TESLA
        print(carOfChoice)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

