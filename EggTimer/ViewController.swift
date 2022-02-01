//
//  ViewController.swift
//  EggTimer
//
//  Created by Angela Yu on 08/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit
import Foundation

class ViewController: UIViewController {
    
    let eggTimes = ["Soft": 300, "Medium": 420, "Hard": 700] //300,420,700
    var eggSeconds = 60
    var secondsDone = 60
    var timer = Timer()
    var hardness = ""
    
    @IBOutlet weak var timerLabel: UILabel!
    
    @IBOutlet weak var progressBar: UIProgressView!
    
    @IBAction func hardnessSelector(_ sender: UIButton) {
        timer.invalidate()
        
        hardness = sender.currentTitle!
        
        eggSeconds = eggTimes[hardness]!
        secondsDone = eggSeconds
        
        //timerLabel.text = "You chose \(hardness.lowercased()) eggs"
        
        timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(updateCounter), userInfo: nil, repeats: true) //keep repeats true you else the timer will stop after firing once
        
        /*selector = what do you want to happen when the timer fires?
         selector is objective c
         */
    }

    @objc func updateCounter() { //objective c function so that timer can use it
        
        if eggSeconds > 0 {
         
            print("\(eggSeconds) seconds")
            
            progressBar.progress = Float(Double(eggSeconds)/Double(secondsDone))
            
            eggSeconds -= 1
            
        }else{

            timer.invalidate()
            
            progressBar.progress = 0.0
            
            timerLabel.text = "Your \(hardness.lowercased()) egg timer is done"
        }
        
    }
    
}
