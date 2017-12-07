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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        currentValue = lroundf(number.value)
        startNewRound()
    }
    
    func updateLabels() {
        targetLabel.text = String(targetValue)
    }
    
    func updateScore() {
        scoreValue.text = String(score)
    }
    
    func startNewRound() {
        targetValue = 1 + Int(arc4random_uniform(100))
        currentValue = 50
        number.value = Float(currentValue)
        updateLabels()
        updateScore()
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
        let points = 100 - difference
      
        score += points // score = score + points
        
        let message = "You scored \(points) points"
        let alert = UIAlertController(title: "Hit Me Game", message: message, preferredStyle: .alert)
        let action = UIAlertAction(title: "Awesome", style: .default, handler: nil)
        alert.addAction(action)
        present(alert, animated: true, completion: nil)
        startNewRound()
    }
    
    
}


