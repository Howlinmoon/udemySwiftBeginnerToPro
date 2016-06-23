//
//  ViewController.swift
//  no-storyboards
//
//  Created by Mark Price on 8/14/15.
//  Copyright © 2015 devslopes. All rights reserved.
//

import UIKit

class YellowVC: UIViewController {

    var blueVC: BlueVC!
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func loadBlueView(sender: AnyObject) {
        blueVC = BlueVC(printMe: "Print this now!")
        self.presentViewController(blueVC, animated: true, completion: nil)
    }

}

