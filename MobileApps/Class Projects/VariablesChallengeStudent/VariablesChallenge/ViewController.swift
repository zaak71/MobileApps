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
    
    /***************************************************
     * End Your Code Here For Stretch #1 - Part I
     ***************************************************/
    
    /***************************************************
     * Start Your Code Here For Stretch #2 - Part I
     ***************************************************/
    
    /***************************************************
     * End Your Code Here For Stretch #2 - Part I
     ***************************************************/
    
    /***************************************************
     * Start Your Code Here For Stretch #3 - Part I
     ***************************************************/
    
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
        
        /***************************************************
         * End Your Code Here For Stretch #1 - Part II
         ***************************************************/
        
        //Uncomment the line below for Stretch #1
        //stretchOneLabel.text = greeting
        
        /***************************************************
         * Start Your Code Here For Stretch #2 - Part II
         ***************************************************/
        
        /***************************************************
         * End Your Code Here For Stretch #2 - Part II
         ***************************************************/
        
        //Uncomment the line below for Stretch #2
        //stretchTwoLabel.text = "Team 1: \(teamOne)\nTeam 2: \(teamTwo)"
        
        /***************************************************
         * Start Your Code Here For Stretch #3 - Part II
         ***************************************************/
        
        /***************************************************
         * End Your Code Here For Stretch #3 - Part II
         ***************************************************/
        
        //Uncomment the line below for Stretch #1
        //stretchThreeLabel.text = "\(teamHighScoreOne)\n\(teamHighScoreTwo)"
    }
    
}

