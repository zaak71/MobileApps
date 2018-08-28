//
//  ViewController.swift
//  GreenToWhite
//
//  Created by Zuhair Ali Kahn 2019 on 8/23/18.
//  Copyright © 2018 Zuhair Ali Kahn 2019. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var colorLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    
    @IBAction func makeViewGreen(_ sender: Any) {
        self.view.backgroundColor = UIColor.green
        colorLabel.text = "It's not easy being green."
    }
    
    
    @IBAction func resetViewColor(_ sender: Any) {
        self.view.backgroundColor = UIColor.white
        colorLabel.text = "What color am I?"
        
        let url = URL(string: "https://www.apple.com")!
        let task = URLSession.shared.dataTask(with: url) { (data,
            response, error) in
            
            if let data = data {
                print(data)
            }
        }
        
        task.resume()

    }
}

