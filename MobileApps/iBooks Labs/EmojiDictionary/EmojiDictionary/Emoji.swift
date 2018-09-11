//
//  Emoji.swift
//  EmojiDictionary
//
//  Created by Zuhair Ali Kahn 2019 on 8/27/18.
//  Copyright © 2018 Zuhair Ali Kahn 2019. All rights reserved.
//

import Foundation

class Emoji : Codable {
    var symbol: String
    var name: String
    var description: String
    var usage: String
    
    //let archiveURL = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first!.appendingPathComponent("emojis").appendPathExtension("plist")
    
    
    
    init(symbol: String, name: String, description: String,
         usage: String) {
        self.symbol = symbol
        self.name = name
        self.description = description
        self.usage = usage
        
    }
    
    func saveToFile(emojis: [Emoji]) {
        let propertyListEncoder = PropertyListEncoder()
        if let encodedEmojis = try? propertyListEncoder.encode(emojis) {
            
        }
    }
    func loadFromFile() -> [Emoji] {
        
        return []
    }
}
