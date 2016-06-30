//
//  ViewController.swift
//  enums
//
//  Created by jim Veneskey on 6/30/16.
//  Copyright © 2016 Jim Veneskey. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var theLabel: UILabel!
    
    enum Cars: Int {
        case PORSCHE = 0
        case CHEVY = 1
        case PONTIAC = 2
        case TESLA = 3
    }

    
    var carOfChoice: Cars!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onBtnTapped(sender: UIButton!) {
    
        if sender.tag == Cars.PORSCHE.rawValue {
            theLabel.text = "Porsche 911 - cool!"
        } else if sender.tag == Cars.CHEVY.rawValue {
            theLabel.text = "Chevy Camaro - Classic cool!"
        } else if sender.tag == Cars.PONTIAC.rawValue {
            theLabel.text = "Pontiac Trans-AM Smokey!"
        } else if sender.tag == Cars.TESLA.rawValue {
            theLabel.text = "Tesla - The future is here!"
        }
        
    }

}

