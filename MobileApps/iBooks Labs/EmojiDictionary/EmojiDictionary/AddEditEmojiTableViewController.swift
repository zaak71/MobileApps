//
//  AddEditEmojiTableViewController.swift
//  EmojiDictionary
//
//  Created by Zuhair Ali Kahn 2019 on 9/4/18.
//  Copyright © 2018 Zuhair Ali Kahn 2019. All rights reserved.
//

import UIKit

class AddEditEmojiTableViewController: UITableViewController {

    @IBOutlet weak var symbolTextField: UITextField!
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var usageTextField: UITextField!
    @IBOutlet weak var descriptionTextField: UITextField!
    @IBOutlet weak var saveButton: UIBarButtonItem!
    
    var emoji: Emoji?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let newEmoji = emoji {
            symbolTextField.text = newEmoji.symbol
            nameTextField.text = newEmoji.name
            usageTextField.text = newEmoji.usage
            descriptionTextField.text = newEmoji.description
        }
        
        updateSaveButtonState()
    }
    func updateSaveButtonState() {
        let symbolText = symbolTextField.text ?? ""
        let nameText = nameTextField.text ?? ""
        let descriptionText = descriptionTextField.text ?? ""
        let usageText = usageTextField.text ?? ""
        saveButton.isEnabled = !symbolText.isEmpty && !nameText.isEmpty && !descriptionText.isEmpty && !usageText.isEmpty
    }
    
    @IBAction func textEditingChanged(_ sender: UITextField){
        updateSaveButtonState()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        super.prepare(for: segue, sender: sender)
        
        guard segue.identifier == "saveUnwind" else {
            return
        }
        let symbol = symbolTextField.text ?? ""
        let name = nameTextField.text ?? ""
        let description = descriptionTextField.text ?? ""
        let usage = usageTextField.text ?? ""
        emoji = Emoji(symbol: symbol, name: name, description: description, usage: usage)
        
    }
    
}
