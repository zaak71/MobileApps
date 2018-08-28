//
//  ViewController.swift
//  MyNameMyIdentity
//
//  Created by Margaret Hunt on 8/2/18.
//  Copyright © 2018 SHS. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    var audioPlayer: AVAudioPlayer?
    
    @IBOutlet weak var myNameLabel: UILabel!
    
    @IBOutlet weak var myImageView: UIImageView!
    
    @IBOutlet weak var myNameStoryTextView: UITextView!
   
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func nicknameButtonTapped(_ sender: UIButton) {
        myImageView.image = UIImage(named: "myNamePicture")
        
        myNameLabel.text = "My nickname is ZAK"
        
        playAudio(fileName: "myNicknameRecording")
    }
    
    
    @IBAction func fullNameButtonTapped(_ sender: UIButton) {
        myImageView.image = UIImage(named: "myNamePicture")
        
        myNameLabel.text = "My full name is Zuhair Ali-Khan"
        
        playAudio(fileName: "myFullNameRecording")
        
        myNameStoryTextView.text = "Not really sure about the story of my name"
    }
    
    func playAudio(fileName: String)
    {
        guard let url = Bundle.main.url(forResource: fileName, withExtension: "mp3") else {
            print("Audio test didn't work")
            return
            
        }
        
        do {
            try AVAudioSession.sharedInstance().setCategory(AVAudioSessionCategoryPlayback)
            try AVAudioSession.sharedInstance().setActive(true)
            
            // For iOS 11
            audioPlayer = try AVAudioPlayer(contentsOf: url, fileTypeHint: AVFileType.m4a.rawValue)
            
            
            guard let aPlayer = audioPlayer else { return }
            aPlayer.play()
            
        } catch let error {
            print(error.localizedDescription)
        }

    }
    
    
}

