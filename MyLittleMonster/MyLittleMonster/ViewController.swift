//
//  ViewController.swift
//  MyLittleMonster
//
//  Created by jim Veneskey on 5/27/16.
//  Copyright © 2016 Jim Veneskey. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  
    @IBOutlet weak var monsterImg: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        var imgArray = [UIImage]()
        
        for index in 1...4 {
            let img = UIImage(named: "idle\(index).png")
            imgArray.append(img!)
        }
        
        monsterImg.animationImages = imgArray
        monsterImg.animationDuration = 0.8
        monsterImg.animationRepeatCount = 0
        monsterImg.startAnimating()
    
    }



}

