//
//  AddEditEmojiTableViewController.swift
//  EmojiDictionary
//
//  Created by Zuhair Ali Kahn 2019 on 9/4/18.
//  Copyright © 2018 Zuhair Ali Kahn 2019. All rights reserved.
//

import UIKit

class AddEditEmojiTableViewController: UITableViewController {

    var emoji: Emoji
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 0
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 0
    }

}
