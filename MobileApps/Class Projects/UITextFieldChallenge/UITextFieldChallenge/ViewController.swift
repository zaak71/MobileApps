//
//  ViewController.swift
//  UITextFieldChallenge
//
//  Created by Zuhair Ali Kahn 2019 on 9/20/18.
//  Copyright © 2018 Zuhair Ali-Khan. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var helloLabel: UILabel!
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var greetingControl: UISegmentedControl!
    @IBOutlet weak var backgroundSlider: UISlider!
    
    var selectedGreeting = "Hello"
    let greetings = ["Hello", "Goodbye", "Good Morning"]
    
    @IBAction func sayHello(_ sender: Any) {
        helloLabel.text = "\(selectedGreeting) \(nameTextField.text!)!"
        
        nameTextField.resignFirstResponder()
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        textField.resignFirstResponder()
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        nameTextField.resignFirstResponder()
        self.view.endEditing(true)
        helloLabel.text = "\(selectedGreeting) \(nameTextField.text!)!"
        return false;
    }
    
    @IBAction func segmentChanged(_ sender: Any) {
        selectedGreeting = greetings[greetingControl.selectedSegmentIndex]
        helloLabel.text = "\(selectedGreeting) \(nameTextField.text!)!"
        
        nameTextField.resignFirstResponder()
    }
    
    @IBAction func changeBackgroundColor(_ sender: Any) {
        let value = backgroundSlider.value
        
        self.view.backgroundColor = UIColor(red: CGFloat(value/255), green: CGFloat(arc4random()), blue: CGFloat(value/255), alpha: 1)
        
        nameTextField.resignFirstResponder()
    }
    
    func endEditing(){
        view.endEditing(true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.nameTextField.delegate = self;
        let tap = UITapGestureRecognizer(target: self.view, action: #selector(UIView.endEditing(_:)))
        tap.cancelsTouchesInView = false
        self.view.addGestureRecognizer(tap)
        
    }
}

