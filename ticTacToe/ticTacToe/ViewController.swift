//
//  ViewController.swift
//  ticTacToe
//
//  Created by Rick Wolter on 7/13/18.
//  Copyright © 2018 RNWolter. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    var activePlayer = 1 // The cross
    @IBAction func action(_ sender: UIButton)
    {
            if (activePlayer == 1)
            {
                sender.setImage(UIImage(named:"Naught.png"), for: UIControlState())
                activePlayer = 1
            }
            else{
            sender.setImage(UIImage(named:"Naught.png"), for: UIControlState())
                activePlayer = 1
        }
    }
}

