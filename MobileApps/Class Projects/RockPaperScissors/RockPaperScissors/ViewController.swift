//
//  ViewController.swift
//  RockPaperScissors
//
//  Created by Zuhair Ali Kahn 2019 on 1/17/19.
//  Copyright © 2019 Zuhair Ali-Khan. All rights reserved.
//

import UIKit
import SafariServices

class ViewController: UIViewController, UIImagePickerControllerDelegate {

    var selectedChoice = ""
    var imageChoice = ""
    
    let imagePicker = UIImagePickerController()
    let cameraImagePicker = UIImagePickerController()
    
    
    @IBOutlet weak var rockImage: UIImageView!
    @IBOutlet weak var paperImage: UIImageView!
    @IBOutlet weak var scissorsImage: UIImageView!
    
    @IBOutlet weak var winnerLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let rockDoubleTapRecognizer = UITapGestureRecognizer(target: self, action: #selector(onRockDoubleTap))
        rockDoubleTapRecognizer.numberOfTapsRequired = 2
        let rockLongPressRecognizer = UILongPressGestureRecognizer(target: self, action: #selector(onRockLongPress))
        
        
        let paperDoubleTapRecognizer = UITapGestureRecognizer(target: self, action: #selector(onPaperDoubleTap))
        paperDoubleTapRecognizer.numberOfTapsRequired = 2
        let paperLongPressRecognizer = UILongPressGestureRecognizer(target: self, action: #selector(onPaperLongPress))
        
        let scissorsDoubleTapRecognizer = UITapGestureRecognizer(target: self, action: #selector(onScissorsDoubleTap))
       scissorsDoubleTapRecognizer.numberOfTapsRequired = 2
        
        let scissorsLongPressRecognizer = UILongPressGestureRecognizer(target: self, action: #selector(onScissorsLongPress))
    rockImage.addGestureRecognizer(rockDoubleTapRecognizer)
    rockImage.addGestureRecognizer(rockLongPressRecognizer)
    scissorsImage.addGestureRecognizer(scissorsDoubleTapRecognizer)
    scissorsImage.addGestureRecognizer(scissorsLongPressRecognizer)
    paperImage.addGestureRecognizer(paperDoubleTapRecognizer)
    paperImage.addGestureRecognizer(paperLongPressRecognizer)
        
        imagePicker.sourceType = .photoLibrary
        imagePicker.delegate = self as? UIImagePickerControllerDelegate & UINavigationControllerDelegate
        
        //cameraImagePicker.sourceType = .camera
        //cameraImagePicker.cameraDevice = .front
    }
    
    
    @objc func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        if picker == cameraImagePicker {
            
        }
        switch imageChoice {
        case "rock":
            rockImage.image = info[.originalImage] as? UIImage
            rockImage.setNeedsDisplay()
            self.dismiss(animated: true, completion: nil)
            print("ok")
        case "paper":
            paperImage.image = info[UIImagePickerController.InfoKey.originalImage] as? UIImage
            paperImage.setNeedsDisplay()
        case "scissors":
            scissorsImage.image = info[UIImagePickerController.InfoKey.originalImage] as? UIImage
            scissorsImage.setNeedsDisplay()
        default:
            winnerLabel.text = "You didn't select a choice."
        }
    }
    
    @objc func onRockDoubleTap() {
        print("OK")
        present(imagePicker, animated: true, completion: nil)
        imageChoice = "rock"
    }
    @objc func onPaperDoubleTap() {
        print("OK")
        present(imagePicker, animated: true, completion: nil)
        imageChoice = "paper"
    }
    @objc func onScissorsDoubleTap() {
        print("OK")
        present(imagePicker, animated: true, completion: nil)
        imageChoice = "scissors"
    }
    
    @objc func onRockLongPress() {
        print("OK")
        present(imagePicker, animated: true, completion: nil)
        imageChoice = "rock"
    }
    @objc func onPaperLongPress() {
    }
    @objc func onScissorsLongPress() {
    }

    @IBAction func onRockTapped(_ sender: UITapGestureRecognizer) {
        selectedChoice = "rock"
        switch computerChoice() {
        case "rock":
            winnerLabel.text = "Tie!"
        case "paper":
            winnerLabel.text = "Computer Wins!"
        case "scissors":
            winnerLabel.text = "You Win!"
        default:
            winnerLabel.text = "You didn't select a choice."
        }
        
        let winnerAlert = UIAlertController(title: "Game", message: winnerLabel.text, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default, handler: nil)
        winnerAlert.addAction(okAction)
        self.present(winnerAlert, animated: true, completion: nil)
    }
    @IBAction func onPaperTapped(_ sender: UITapGestureRecognizer) {
        selectedChoice = "paper"
        switch computerChoice() {
        case "paper":
            winnerLabel.text = "Tie!"
        case "scissors":
            winnerLabel.text = "Computer Wins!"
        case "rock":
            winnerLabel.text = "You Win!"
        default:
            winnerLabel.text = "You didn't select a choice."
        }
        let winnerAlert = UIAlertController(title: "Game", message: winnerLabel.text, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default, handler: nil)
        winnerAlert.addAction(okAction)
        self.present(winnerAlert, animated: true, completion: nil)
    }
    @IBAction func onScissorsTapped(_ sender: UITapGestureRecognizer) {
        selectedChoice = "scissors"
        switch computerChoice() {
        case "scissors":
            winnerLabel.text = "Tie!"
        case "rock":
            winnerLabel.text = "Computer Wins!"
        case "paper":
            winnerLabel.text = "You Win!"
        default:
            winnerLabel.text = "You didn't select a choice."
        }
        let winnerAlert = UIAlertController(title: "Game", message: winnerLabel.text, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default, handler: nil)
        winnerAlert.addAction(okAction)
        self.present(winnerAlert, animated: true, completion: nil)
    }
    
    @IBAction func oneViewRulesButtonTapped(_ sender: Any) {
        let vc = SFSafariViewController(url: URL(string: "https://www.wikihow.com/Play-Rock,-Paper,-Scissors")!)
        present(vc, animated: true, completion: nil)
    }
    
    @IBAction func onStartButtonTapped(_ sender: UIButton) {
        winnerLabel.text = ""
        selectedChoice = ""
        sender.isEnabled = false
        let timer = Timer.scheduledTimer(withTimeInterval: 3.0, repeats: false) { timer in
            if(self.selectedChoice == ""){
                self.winnerLabel.text = "You didn't select a choice."
            }
            sender.isEnabled = true
        }
    }
    
    func computerChoice() -> String {
        let num = Int.random(in: 1 ... 3)
        switch num {
        case 1:
            return "rock"
        case 2:
            return "paper"
        case 3:
            return "scissors"
        default:
            return ""
        }
    }
    
    
}

