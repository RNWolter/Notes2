//
//  ViewController.swift
//  Dicee
//
//  Created by Rick Wolter on 8/20/18.
//  Copyright © 2018 RNWolter. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let diceArray: [String] = ["dice1","dice2", "dice3", "dice4","dice5"]
    var randomDiceIndex1: Int = 0
    var randomDiceIndex2: Int = 0

    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateDiceImages()
    }
    
    
    
    
    @IBAction func rollButtonPressed(_ sender: UIButton) {
        
        updateDiceImages()
    }
    
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        updateDiceImages()
    }
    
    
    
    
    func updateDiceImages() {
        
       randomDiceIndex1 = Int(arc4random_uniform(5))
       randomDiceIndex2 = Int(arc4random_uniform(5))
        
        diceImageView1.image = UIImage(named: diceArray[randomDiceIndex1])
        diceImageView2.image = UIImage(named: diceArray[randomDiceIndex2])
        
        
    }
    
    
    

    


}

