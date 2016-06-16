//
//  ViewController.swift
//  viewcontroller-example
//
//  Created by jim Veneskey on 6/16/16.
//  Copyright © 2016 Jim Veneskey. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = UIColor.greenColor()
        
        // this is only called once!
    
    }

    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        // this is called every time before a view is displayed
    }

}

