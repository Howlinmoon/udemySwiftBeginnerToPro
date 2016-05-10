//
//  ViewController.swift
//  retro-calculator
//   Modified for the exercise
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
        case Empty = "Empty"
    }
    
    
    
    @IBOutlet weak var outputLabel: UILabel!

    // accumulator
    var btnSound: AVAudioPlayer!
    var runningNumber = "0"
    var leftValStr = "0"
    var rightValStr = "0"
    var currentOperation: Operation = Operation.Empty
    var result = ""
    
    
    
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
        playSound()
        print("button pressed: \(btn.tag)")
        if Double(runningNumber) != 0 {
            runningNumber += "\(btn.tag)"
        } else{
            runningNumber = "\(btn.tag)"
        }
        outputLabel.text = runningNumber
    }
    
    @IBAction func onDividePressed(sender: AnyObject) {
        print("Divide was pressed")
        processOperation(Operation.Divide)
    }
    
    @IBAction func onMultiplyPressed(sender: AnyObject) {
        processOperation(Operation.Multiply)
    }
    
    
    @IBAction func onSubtractPressed(sender: AnyObject) {
        processOperation(Operation.Subtract)
    }
    
    @IBAction func onAddPressed(sender: AnyObject) {
        processOperation(Operation.Add)
    }
    
    
    @IBAction func onEqualsPressed(sender: AnyObject) {
        processOperation(currentOperation)
        // clear the current operation
        currentOperation = Operation.Empty
    }
    
    
    @IBAction func clearPressed(sender: AnyObject) {
        playSound()
        print("Clear button pressed")
        // Try to restore to power up configuration
        rightValStr = "0"
        leftValStr = "0"
        runningNumber = "0"
        outputLabel.text = "0"
        currentOperation = Operation.Empty
    }
    
    
    func processOperation(op: Operation) {
        playSound()
        var displayingError = false
        
        print("processing operation: \(currentOperation)")
        
        if currentOperation != Operation.Empty {
            // Run some math
            
            // If user pressed two operators in a row, runningNumber is "0"...
            
            if runningNumber != "0" {
                rightValStr = runningNumber
                runningNumber = "0"
                
                if currentOperation == Operation.Multiply {
                    result = "\(Double(leftValStr)! * Double(rightValStr)!)"
                    
                } else if currentOperation == Operation.Divide {
                    print("Processing division, rightValStr = \(rightValStr)")
                    if Double(rightValStr) != 0 {
                        result = "\(Double(leftValStr)! / Double(rightValStr)!)"
                    } else {
                        playSound()
                        outputLabel.text = "/0 ERROR"
                        displayingError = true
                        result = "0"
                    }
                    
                } else if currentOperation == Operation.Subtract {
                    result = "\(Double(leftValStr)! - Double(rightValStr)!)"
                    
                } else if currentOperation == Operation.Add {
                    result = "\(Double(leftValStr)! + Double(rightValStr)!)"
                }
                
                // store current result
                leftValStr = result
                // output the result  - assuming it is not our error message
                if displayingError == false {
                    outputLabel.text = result
                } else {
                    print("output suppressed due to error message")
                }
                
            }
            
            currentOperation = op
            
        } else {
            // this is the first time an operator has been pressed
            // save the current accumulator value
            leftValStr = runningNumber
            runningNumber = "0"
            currentOperation = op
            print("Operation was empty...")
        }
    }
    
    func playSound() {
        if btnSound.playing {
            btnSound.stop()
        }
        btnSound.play()
    }

}

