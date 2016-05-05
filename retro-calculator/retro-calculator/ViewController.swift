//
//  ViewController.swift
//  retro-calculator
//
//  Created by jim Veneskey on 5/3/16.
//  Copyright © 2016 Jim Veneskey. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    enum Operation: String {
        case Divide = "/"
        case Multiply = "*"
        case Subtract = "-"
        case Add = "+"
        case Equals = "="
        case Empty = "Empty"
    }
    
    @IBOutlet weak var outputLbl: UILabel!
    
    var btnSound: AVAudioPlayer!
    
    // accumulator
    var runningNumber = ""
    var leftValStr = ""
    var rightValStr = ""
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // init the audio player
        let path = NSBundle.mainBundle().pathForResource("btn", ofType: "wav")
        let soundURL = NSURL(fileURLWithPath: path!)
        do {
            try btnSound = AVAudioPlayer(contentsOfURL: soundURL)
            btnSound.prepareToPlay()
        } catch let err as NSError {
            print(err.debugDescription)
        }
    }

    @IBAction func numberPressed(btn: UIButton!) {
        btnSound.play()
    }
    
    @IBAction func onDividePressed(sender: AnyObject) {
    
    }
    
    @IBAction func onMultiplyPressed(sender: AnyObject) {
    
    }
    
    
    @IBAction func onSubtractPressed(sender: AnyObject) {
    
    }
    
    @IBAction func onAddPressed(sender: AnyObject) {
    
    }
    
    
    @IBAction func onEqualsPressed(sender: AnyObject) {
    
    }
    
    

}

