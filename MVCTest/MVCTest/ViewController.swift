//
//  ViewController.swift
//  MVCTest
//
//  Created by jim Veneskey on 6/15/16.
//  Copyright © 2016 Jim Veneskey. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var theLabel: UILabel!
    
    @IBOutlet weak var renameField: UITextField!
    
    

    let person = Person(first: "John", last: "Hancock")

    override func viewDidLoad() {
        super.viewDidLoad()

        // the wrong way to do it:
        // theLabel.text = "\(person.firstName) \(person.lastName)"
    
        // the correct way
        theLabel.text = person.fullName
        
        // the wrong way to manipulate the image
//        kittyImage.layer.cornerRadius = 5.0
//        kittyImage.clipsToBounds = true


    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func renamePressed(sender: AnyObject) {
        if let txt = renameField.text {
            person.firstName = txt
            theLabel.text = person.fullName
        }
    }

}

