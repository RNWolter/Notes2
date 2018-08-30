//
//  ViewController.swift
//  BulllsEye
//
//  Created by Rick Wolter on 8/18/18.
//  Copyright © 2018 RNWolter. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var currentValue = 0
    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var targetLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var roundLabel: UILabel!
    
    var score = 0
    var targetValue = 0
    var round = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        targetValue = 1 + Int(arc4random_uniform(100))
        startNewGame()
        
        let thumbImageNormal = #imageLiteral(resourceName: "SliderThumb-Normal")//UIImage(named: "SliderThumb-Normal")
        slider.setThumbImage(thumbImageNormal, for: .normal)
        
        let thumbImageHighlighted = #imageLiteral(resourceName: "SliderThumb-Highlighted")//UIImage(named: "SliderThumb-Highlighted")
        slider.setThumbImage(thumbImageHighlighted, for: .highlighted)
        
        let insets = UIEdgeInsets(top: 0, left: 14, bottom: 0, right: 14)
        
        let trackLeftImage =  #imageLiteral(resourceName: "SliderTrackLeft")//UIImage(named: "SliderTrackLeft")
        let trackLeftResizable = trackLeftImage.resizableImage(withCapInsets: insets)
        slider.setMinimumTrackImage(trackLeftResizable, for: .normal)
        
        let trackRightImage =  #imageLiteral(resourceName: "SliderTrackRight")   // UIImage(named: "SliderTrackRight")
        let trackRightResizable = trackRightImage.resizableImage(withCapInsets: insets)
        slider.setMaximumTrackImage(trackRightResizable, for: .normal)
        
        
        
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    @IBAction func startNewGame() {
        round = 0
        score = 0
        startNewRound()
    }
    
    
    func updateLabels(){
        targetLabel.text = String(targetValue)
        scoreLabel.text = String(score)
        roundLabel.text = String(round)
    }
    
    
    
    
    func startNewRound(){
        round += 1
        targetValue = 1 + Int(arc4random_uniform(100))
        currentValue = 50
        slider.value = Float(currentValue)
        updateLabels()
    }
        
    
  
    
    @IBAction func sliderMoved(_ slider: UISlider) {
       
        currentValue = lroundf(slider.value)
    }
    
    @IBAction func showAlert() {
        let difference = abs(currentValue - targetValue)
        var points: Int = 100 - difference

        let title :String
        if difference == 0{
            title = "Perfect!"
            points += 100
        } else if difference < 5 {
            title = "You almost had it!"
            if difference == 1{points += 50}
        } else if difference < 10 {
            title = "Pretty good!"
        } else {
            title = "Not even close"
        }
        score += points
        let message = "You scored \(points) points"
        
       
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        
        let action = UIAlertAction(title: "Awesome", style: .default, handler: {
            action in
                self.startNewRound()
        })
        
        alert.addAction(action)
        
       
        present(alert, animated: true, completion: nil)
        
    }
    
    
        
    }
    
//    override func didReceiveMemoryWarning() {
//        super.didReceiveMemoryWarning()
//        // Dispose of any resources that can be recreated.
//    }




