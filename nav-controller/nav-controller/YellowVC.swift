//
//  YellowVC.swift
//  nav-controller
//
//  Created by jim Veneskey on 7/15/16.
//  Copyright © 2016 Jim Veneskey. All rights reserved.
//

import UIKit

class YellowVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func popVC(sender: AnyObject) {
        navigationController?.popToRootViewControllerAnimated(true)
    
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
