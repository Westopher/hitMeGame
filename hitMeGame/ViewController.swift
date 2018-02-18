//
//  ViewController.swift
//  hitMeGame
//
//  Created by West Kraemer on 11/30/17.
//  Copyright © 2017 West Kraemer. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var currentValue = 0
    @IBOutlet weak var number: UISlider!
    var targetValue = 0
    @IBOutlet weak var targetLabel: UILabel!
    var score = 0
    @IBOutlet weak var scoreValue: UILabel!
    var round = 0
    @IBOutlet weak var roundLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        currentValue = lroundf(number.value)
        startNewGame()
        
        let thumbImageNormal = UIImage(named: "SliderThumb-Normal")
        number.setThumbImage(thumbImageNormal, for: .normal)
        
        let thumbImageHighlighted = UIImage(named: "SliderThumb-Highlighted")
        number.setThumbImage(thumbImageNormal, for: .highlighted)
        
        let insets = UIEdgeInsets(top: 0, left: 14, bottom: 0, right: 14)
        
        let trackLeftImage = UIImage(named: "SliderTrackLeft")
        let trackLeftResizable = trackLeftImage?.resizableImage(withCapInsets: insets)
        number.setMinimumTrackImage(trackLeftResizable, for: .normal)
        
        let trackRightImage = UIImage(named: "SliderTrackRight")
        let trackRightResizable = trackRightImage?.resizableImage(withCapInsets: insets)
        number.setMaximumTrackImage(trackRightResizable, for: .normal)
        
        
    }
    
    @IBAction func startNewGame() {
        score = 0
        round = 0
        startNewRound()
    }
    
    
    func updateLabels() {
        targetLabel.text = String(targetValue)
    }
    
    func updateScore() {
        scoreValue.text = String(score)
    }
    
    func updateRound() {
        roundLabel.text = String(round)
    }
    
    func startNewRound() {
        round += 1 // round = round + 1
        targetValue = 1 + Int(arc4random_uniform(100))
        currentValue = 50
        number.value = Float(currentValue)
        updateLabels()
        updateScore()
        updateRound()
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func sliderMoved(_ number: UISlider) {
        print("The value of slider is now: \(number.value)")
        currentValue = lroundf(number.value)
    }
    
    @IBAction func showAlert() {
        
        let difference = abs(currentValue - targetValue)
        var points = 100 - difference
      
        let title: String
        if difference == 0 {
            title = "Perfect!"
            points += 100
        } else if difference < 5 {
            title = "Almost!"
        } else if difference < 10 {
            title = "Pretty Good"
        } else {
            title = "Not close. You could do better!"
        }
        
        score += points // score = score + points
        
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


