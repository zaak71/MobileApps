//
//  ViewController.swift
//  TurnMeBlue
//
//  Created by Zuhair Ali Kahn 2019 on 8/22/18.
//  Copyright © 2018 Zuhair Ali Kahn 2019. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        myLabel.textColor = UIColor.red;
        myLabel.text = "I am red"
    }

    @IBAction func MakeLabelBlue(_ sender: UIButton) {
        myLabel.textColor = UIColor.blue;
    }
    
    /**@IBAction func makeViewGreen(_ sender: Any) {
        self.view.backgroundColor = UIColor.green
        myLabel.text = "What color am I?"
    }
    
    @IBAction func resetViewColor(_ sender: Any) {
        self.view.backgroundColor = UIColor.white
    }*/
    @IBAction func makeViewGreen(_ sender: Any) {
        self.view.backgroundColor = UIColor.green
        myLabel.text = "What color am I?"
    }
    @IBAction func resetViewColor(_ sender: Any) {
        self.view.backgroundColor = UIColor.white
    }
    
}

