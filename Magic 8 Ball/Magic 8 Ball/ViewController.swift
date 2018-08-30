//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Rick Wolter on 8/25/18.
//  Copyright © 2018 RNWolter. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var ballArray = ["ball1","ball2","ball3","ball4","ball5"]
    var randomBallImage: Int = 0

    @IBOutlet weak var imageView: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        randomBallImage = Int(arc4random_uniform(5))
        
        imageView.image = UIImage(named: "ball\(randomBallImage)")
        // Do any additional setup after loading the view, typically from a nib.
    }

   
    @IBAction func askButtonPressed(_ sender: UIButton) {
        newBallImage()
    }
    func newBallImage(){
        
        randomBallImage = Int(arc4random_uniform(4)+1)
        imageView.image = UIImage(named: "ball\(randomBallImage)")
    }
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        newBallImage()
    }
    
}

