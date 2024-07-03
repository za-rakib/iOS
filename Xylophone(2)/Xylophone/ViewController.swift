//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 28/06/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    var audioPlayer: AVAudioPlayer?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }


    @IBAction func keyPressed(_ sender: UIButton) {
        let soundName = sender.currentTitle
        sender.alpha = 0.5
        playSound(soundName : soundName!)
    }
    
    func playSound(soundName : String) {
            guard let url = Bundle.main.url(forResource: soundName, withExtension: "wav") else {
                print("Error: Unable to find sound file")
                return
            }

            do {
                audioPlayer = try AVAudioPlayer(contentsOf: url)
                audioPlayer?.play()
            } catch let error {
                print("Error: \(error.localizedDescription)")
            }
        }
}

