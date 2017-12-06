//
//  ViewController.swift
//  hitMeGame
//
//  Created by West Kraemer on 11/30/17.
//  Copyright © 2017 West Kraemer. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var currentValue: Int = 0
    @IBOutlet weak var number: UISlider!
    var targetValue: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        currentValue = lroundf(number.value)
        startNewRound()
    }
    
    func startNewRound() {
        targetValue = 1 + Int(arc4random_uniform(100))
        currentValue = 50
        number.value = Float(currentValue)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sliderMoved(_ number: UISlider) {
        print("The value of the slider is now: \(number.value)")
        
    }
    
    @IBAction func showAlert() {
        
        let message = "The value of the slider is: \(currentValue)" + "\nThe target value is: \(targetValue)"
        
        let alert = UIAlertController(title: "Hello, World", message: message, preferredStyle: .alert)
        
        let action = UIAlertAction(title: "Awesome", style: .default, handler: nil)
        
        alert.addAction(action)
        
        present(alert, animated: true, completion: nil)
        
        startNewRound()
        
    }
    
    
}


