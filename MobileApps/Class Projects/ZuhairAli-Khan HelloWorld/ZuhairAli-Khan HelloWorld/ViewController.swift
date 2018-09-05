//
//  ViewController.swift
//  ZuhairAli-Khan HelloWorld
//
//  Created by Zuhair Ali-Khan on 9/4/18.
//  Copyright © 2018 Zuhair Ali-Khan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var helloWorldLabel: UILabel!
    @IBOutlet weak var clickMeButton: UIButton!
    
    
    var favoriteBand = "Imagine Dragons"
    var numberOfMembers = 4
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //bandNameLabel.text = favoriteBand
        //bandInfoLabel.text = "\(favoriteBand) has \(numberOfMembers) members."
        var labelX = Int(helloWorldLabel.center.x)+60
        var labelY = Int(helloWorldLabel.center.y)-50
        let classLabel = UILabel(frame: CGRect(x:labelX , y: labelY, width: 110, height: 100))
        classLabel.numberOfLines = 3
        classLabel.text = "Mobile App Development"
        self.view.addSubview(classLabel)
        
        
        labelX = Int(clickMeButton.frame.origin.x)+210
        labelY = Int(clickMeButton.frame.origin.y)
        let yellowButton = UIButton(frame: CGRect(x: labelX, y: labelY, width: 60, height: 30))
        yellowButton.backgroundColor = UIColor.yellow
        yellowButton.setTitle("Button", for: UIControlState.normal)
        yellowButton.setTitleColor(UIColor.blue, for: UIControlState.normal)
        self.view.addSubview(yellowButton)
    }


}

