//
//  ViewController.swift
//  defaults-are-fun
//
//  Created by jim Veneskey on 7/13/16.
//  Copyright © 2016 Jim Veneskey. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var favLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if let color = NSUserDefaults.standardUserDefaults().valueForKey("color") as? String {
            print("There was a color present, it is: \(color)")
            favLabel.text = "Favorite Color: \(color)"
        } else {
            print("First timer?")
            favLabel.text = "Pick a color!"
        }
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

   
    @IBAction func red(sender: AnyObject) {
    
        print("Red Pressed")
        favLabel.text = "Favorite Color: Red"
        NSUserDefaults.standardUserDefaults().setValue("Red", forKey: "color")
        NSUserDefaults.standardUserDefaults().synchronize()
    }
    
    
    @IBAction func yellow(sender: AnyObject) {

        print("Yellow Pressed")
        favLabel.text = "Favorite Color: Yellow"
        NSUserDefaults.standardUserDefaults().setValue("Yellow", forKey: "color")
        NSUserDefaults.standardUserDefaults().synchronize()
    }
    
    
    @IBAction func blue(sender: AnyObject) {
    
        print("Blue Pressed")
        favLabel.text = "Favorite Color: Blue"
        NSUserDefaults.standardUserDefaults().setValue("Blue", forKey: "color")
        NSUserDefaults.standardUserDefaults().synchronize()
    }
    
}

