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
    @IBOutlet weak var leftImage: UIImageView!
    @IBOutlet weak var oldTextField: UITextField!
    @IBOutlet weak var slider: UISlider!
    
    
    var favoriteBand = "Imagine Dragons"
    var numberOfMembers = 4
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        var itemX = Int(helloWorldLabel.center.x)+60
        var itemY = Int(helloWorldLabel.center.y)-50
        let classLabel = UILabel(frame: CGRect(x: itemX , y: itemY, width: 110, height: 100))
        classLabel.numberOfLines = 3
        classLabel.text = "Mobile App Development"
        self.view.addSubview(classLabel)
        
        
        itemX = Int(clickMeButton.frame.origin.x)+210
        itemY = Int(clickMeButton.frame.origin.y)
        let yellowButton = UIButton(frame: CGRect(x: itemX, y: itemY, width: 60, height: 30))
        yellowButton.backgroundColor = UIColor.yellow
        yellowButton.setTitle("Button", for: UIControlState.normal)
        yellowButton.setTitleColor(UIColor.blue, for: UIControlState.normal)
        //yellowButton.showsTouchWhenHighlighted = true
        yellowButton.adjustsImageWhenHighlighted = true
        yellowButton.isEnabled = true
        yellowButton.isUserInteractionEnabled = true
        self.view.addSubview(yellowButton)
        
        itemX = Int(leftImage.frame.origin.x) + 220
        itemY = Int(leftImage.frame.origin.y)
        let imageView = UIImageView(frame: CGRect(x: itemX, y: itemY, width: 100, height: 100))
        imageView.image = #imageLiteral(resourceName: "oranges")
        self.view.addSubview(imageView)
        
        itemX = Int(oldTextField.frame.origin.x) + 220
        itemY = Int(oldTextField.frame.origin.y)
        let newTextField = UITextField(frame: CGRect(x: itemX, y: itemY, width: 125, height: 30))
        newTextField.placeholder = "What Fun"
        newTextField.borderStyle = UITextBorderStyle.roundedRect
        newTextField.textAlignment = NSTextAlignment.center
        
        self.view.addSubview(newTextField)
        
        itemX = (Int(slider.frame.origin.x)) + 220
        itemY = Int(slider.frame.origin.y) - 10
        let bandLabel = UILabel(frame: CGRect(x: itemX, y: itemY, width: Int(slider.frame.width), height: Int(slider.frame.height*2)))
        bandLabel.text = favoriteBand
        bandLabel.numberOfLines = 2
        bandLabel.textAlignment = NSTextAlignment.center
        self.view.addSubview(bandLabel)
        
        let bandInfoLabel = UILabel(frame: CGRect(x: 20, y: 60, width: 320, height: 160))
        bandInfoLabel.numberOfLines = 4
        bandInfoLabel.text = "\(favoriteBand) has \(numberOfMembers) members."
        bandInfoLabel.textAlignment = NSTextAlignment.center
        self.view.addSubview(bandInfoLabel)
    }


}

