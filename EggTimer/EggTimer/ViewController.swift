//
//  ViewController.swift
//  EggTimer
//
//  Created by Angela Yu on 08/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
<<<<<<< HEAD
     
    let softaTime = 5
    let mediumTime = 8
    let hardTime = 12

=======
  
    let softTime = 5
    let mediumTime = 7
    let hardTime = 12
    
>>>>>>> ba04124eb17dcc059c03de6a5cac333984cb975a
    @IBAction func hardnessSelected(_ sender: UIButton) {
//        print(sender.currentTitle)
        let hardness = sender.currentTitle
        if(hardness == "Soft"){
<<<<<<< HEAD
            print(softaTime)
        }
        else if(hardness == "Medium")
        {
=======
            print(softTime)
        }
        else if (hardness == "Medium"){
>>>>>>> ba04124eb17dcc059c03de6a5cac333984cb975a
            print(mediumTime)
        }
        else{
            print(hardTime)
        }
    }
<<<<<<< HEAD
=======
    
>>>>>>> ba04124eb17dcc059c03de6a5cac333984cb975a
}
