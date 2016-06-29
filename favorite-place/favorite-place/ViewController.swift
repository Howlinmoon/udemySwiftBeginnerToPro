//
//  ViewController.swift
//  favorite-place
//
//  Created by jim Veneskey on 6/28/16.
//  Copyright © 2016 Jim Veneskey. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var moreBtn: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        moreBtn.layer.cornerRadius = 2.0

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

