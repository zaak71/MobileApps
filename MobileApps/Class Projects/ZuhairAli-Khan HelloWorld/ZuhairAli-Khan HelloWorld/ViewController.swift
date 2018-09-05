//
//  ViewController.swift
//  ZuhairAli-Khan HelloWorld
//
//  Created by Zuhair Ali-Khan on 9/4/18.
//  Copyright © 2018 Zuhair Ali-Khan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var bandInfoLabel: UILabel!
    @IBOutlet weak var bandNameLabel: UILabel!
    var favoriteBand = "Imagine Dragons"
    var numberOfMembers = 4
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        bandNameLabel.text = favoriteBand
        bandInfoLabel.text = "\(favoriteBand) has \(numberOfMembers) members."
    }


}

