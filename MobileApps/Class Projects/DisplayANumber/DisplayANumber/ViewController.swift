//
//  ViewController.swift
//  DisplayANumber
//
//  Created by Zuhair Ali Kahn 2019 on 9/14/18.
//  Copyright © 2018 Zuhair Ali-Khan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myLabel: UILabel!
    @IBOutlet weak var myTextField: UITextField!
    @IBOutlet weak var numberButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    @IBAction func buttonClicked(_ sender: Any) {
        myLabel.text = myTextField.text
    }
}

