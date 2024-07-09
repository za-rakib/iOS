//
//  ViewController.swift
//  EggTimer
//
//  Created by Angela Yu on 08/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let eggTimes = ["Soft":3,"Medium":4,"Hard":7  ]
    

    @IBOutlet weak var Progressbar: UIProgressView!
    @IBOutlet weak var titleLabel: UILabel!
    var totalTime = 0
    var secondsPassed = 0
    var timer = Timer()
    
    @IBAction func hardnessSelected(_ sender: UIButton) {
        
        timer.invalidate()
        
        let hardness = sender.currentTitle!
        totalTime = eggTimes[hardness]!
        
        Progressbar.progress = 0.0
        secondsPassed = 0
        titleLabel.text = hardness
        
      timer  = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(updateCounter), userInfo: nil, repeats: true)
    }
    
    @objc func updateCounter() {
        //example functionality
        if secondsPassed<totalTime {
            secondsPassed += 1
            let percentagePrograss = Float(secondsPassed)/Float(totalTime)
            Progressbar.progress = percentagePrograss
           
        }
        else{
            timer.invalidate()
            titleLabel.text = "DONE!!"
        }
    }
}
