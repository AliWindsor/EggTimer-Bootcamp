//
//  ViewController.swift
//  EggTimer
//
//  Created by Angela Yu on 08/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let eggTimes = ["Soft": 5, "Medium": 7, "Hard": 12]
    
    @IBAction func hardnessSelector(_ sender: UIButton) {
        
        //print(sender.currentTitle!)
        
        //let hardness = sender.currentTitle!
        
        print (eggTimes[sender.currentTitle!]!)
        
        /*
        switch hardness{
        case "Soft":
            print(eggTimes["Soft"])
            
        case "Medium":
            print(eggTimes[1])
            
        case "Hard":
            print(eggTimes[2])
            
        default:
            print("Invalid egg")
            
        }*/
        
    }
    
}
