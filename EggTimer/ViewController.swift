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
    
    let eggTimes = ["Soft": 5, "Medium": 7, "Hard": 12]
    var eggSeconds = 0
    
    @IBAction func hardnessSelector(_ sender: UIButton) {
 
        let hardness = sender.currentTitle!
        
        var seconds = eggTimes[hardness]! * 60
       
        eggSeconds = seconds
        
        timerCountdown()
    }
    
    func timerCountdown (){
  
        var timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(updateCounter), userInfo: nil, repeats: true)
        
    }
    
    @objc func updateCounter() {
      
        if eggSeconds > 0 {
            print("\(eggSeconds) seconds")
            eggSeconds -= 1
        }
        
    }
    
}
