//
//  ViewController.swift
//  ImageViews
//
//  Created by Zuhair Ali Kahn 2019 on 8/27/18.
//  Copyright © 2018 Zuhair Ali Kahn 2019. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myImageView: UIImageView!
    
    let myImage = #imageLiteral(resourceName: "apple")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        myImageView.image = myImage
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func changeImage(_ sender: Any) {
        myImageView.image = UIImage(named: "oranges")
    }
    
}

