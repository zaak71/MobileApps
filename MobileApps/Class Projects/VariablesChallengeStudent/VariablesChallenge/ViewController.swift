//
//  ViewController.swift
//  VariablesAndAssignmentChallenge
//
//  Created by Robin Roberts on 5/12/16.
//  Copyright (c) 2016 MobileMakers. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{
    @IBOutlet weak var mvpLabel: UILabel!
    var firstName:String = "Zuhair"
    
    @IBOutlet weak var stretchOneLabel: UILabel!
    @IBOutlet weak var stretchTwoLabel: UILabel!
    @IBOutlet weak var stretchThreeLabel: UILabel!
    
    /***************************************************
     * Start Your Code Here For Stretch #1 - Part I
     ***************************************************/
    
    var lastName = "Ali-Khan"
    var titleName = "Mr. "
    
    /***************************************************
     * End Your Code Here For Stretch #1 - Part I
     ***************************************************/
    
    /***************************************************
     * Start Your Code Here For Stretch #2 - Part I
     ***************************************************/
    
    var nameOne = "Player 1"
    var nameTwo = "Player 2"
    var nameThree = "Player 3"
    var nameFour = "Player 4"
    
    /***************************************************
     * End Your Code Here For Stretch #2 - Part I
     ***************************************************/
    
    /***************************************************
     * Start Your Code Here For Stretch #3 - Part I
     ***************************************************/
    
    var p1Score = 10
    var p2Score = 40
    var p3Score = 60
    var p4Score = 30
    
    /***************************************************
     * End Your Code Here For Stretch #3 - Part I
     ***************************************************/
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        /***************************************************
         * Start Your Code Here For MVP
         ***************************************************/
        
        /***************************************************
         * End Your Code Here For MVP
         ***************************************************/
        mvpLabel.text = firstName
        
        /***************************************************
         * Start Your Code Here For Stretch #1 - Part II
         ***************************************************/
        
        var greeting = "Hello \(titleName)\(lastName)"
        
        /***************************************************
         * End Your Code Here For Stretch #1 - Part II
         ***************************************************/
        
        //Uncomment the line below for Stretch #1
        stretchOneLabel.text = greeting
        
        /***************************************************
         * Start Your Code Here For Stretch #2 - Part II
         ***************************************************/
        
        var teamOne = "\(nameOne), \(nameThree)"
        var teamTwo = "\(nameTwo), \(nameFour)"
        
        /***************************************************
         * End Your Code Here For Stretch #2 - Part II
         ***************************************************/
        
        //Uncomment the line below for Stretch #2
        stretchTwoLabel.text = "Team 1: \(teamOne)\nTeam 2: \(teamTwo)"
        
        /***************************************************
         * Start Your Code Here For Stretch #3 - Part II
         ***************************************************/
        
        var playerScore1 = "\(nameOne) : \(p1Score)"
        var playerScore2 = "\(nameTwo) : \(p2Score)"
        var playerScore3 = "\(nameThree) : \(p3Score)"
        var playerScore4 = "\(nameFour) : \(p4Score)"
        
        var teamHighScoreOne = "\(playerScore1) & \(playerScore3)"
        var teamHighScoreTwo = "\(playerScore2) & \(playerScore4)"
        
        /***************************************************
         * End Your Code Here For Stretch #3 - Part II
         ***************************************************/
        
        //Uncomment the line below for Stretch #1
        stretchThreeLabel.text = "\(teamHighScoreOne)\n\(teamHighScoreTwo)"
    }
    
}

