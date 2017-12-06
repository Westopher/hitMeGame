//
//  ViewController.swift
//  hitMeGame
//
//  Created by West Kraemer on 11/30/17.
//  Copyright © 2017 West Kraemer. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func showAlert() {
        
        let alert = UIAlertController(title: "Hello, World", message: "This is an app", preferredStyle: .alert)
        
        let action = UIAlertAction(title: "Awesome", style: .default, handler: nil)
        
        alert.addAction(action)
        
        present(alert, animated: true, completion: nil)
        
    }
    
    
    @IBAction func whoIsThereButton(_ sender: Any) {
        
        let whoIsThereAlert = UIAlertController(title: "Who's there?", message: nil, preferredStyle: .alert)
        
        let whoIsThereAction = UIAlertAction(title: "Haha", style: .default, handler: nil)
        
        whoIsThereAlert.addAction(whoIsThereAction)
        
        present(whoIsThereAlert, animated: true, completion: nil)
        
    }
    
}


