//
//  ViewController.swift
//  UIViewDemo
//
//  Created by Zuhair Ali Kahn 2019 on 9/27/18.
//  Copyright © 2018 Zuhair Ali-Khan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let frame = CGRect(x: 100, y: 100, width: 100, height: 100)
        let newView = UIView(frame: frame)
        newView.backgroundColor = UIColor.blue
        view.addSubview(newView)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

