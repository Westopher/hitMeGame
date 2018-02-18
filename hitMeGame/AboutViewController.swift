//
//  AboutViewController.swift
//  hitMeGame
//
//  Created by West Kraemer on 12/17/17.
//  Copyright © 2017 West Kraemer. All rights reserved.
//

import UIKit

class AboutViewController: UIViewController {

    // @IBOutlet weak var webView: UIWebView!
   
    @IBAction func close () {
        dismiss(animated: true, completion: nil)
    }
    
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        // Do any additional setup after loading the view.
//        if let url = Bundle.main.url(forResource: "BullsEye", withExtension: "html") {
//            if let htmlData = try? Data(contentsOf: url) {
//                let baseURL = URL(fileURLWithPath: Bundle.main.bundlePath)
//                webView.load(htmlData, mimeType: "text/html", textEncodingName: "UTF-8", baseURL: baseURL)
//            }
//        }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    

}
