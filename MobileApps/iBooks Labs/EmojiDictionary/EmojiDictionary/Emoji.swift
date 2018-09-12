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
    
    
    var documentsDirectory = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first!
    static var archiveURL = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first!.appendingPathComponent("emojis").appendingPathExtension("plist")
    
    init(symbol: String, name: String, description: String,
         usage: String) {
        self.symbol = symbol
        self.name = name
        self.description = description
        self.usage = usage
    }
    
    static func saveToFile(emojis: [Emoji]) {
        let propertyListEncoder = PropertyListEncoder()
        
        let encodedEmojis = try? propertyListEncoder.encode(emojis)
        
        try? encodedEmojis?.write(to: archiveURL, options: .noFileProtection)
    }
    static func loadFromFile() -> [Emoji] {
        let propertyListDecoder = PropertyListDecoder()
        if let retrievedEmojis = try? Data(contentsOf: archiveURL),
            let decodedEmojis = try? propertyListDecoder.decode(Array<Emoji>.self, from: retrievedEmojis) {
            print(decodedEmojis)
            return decodedEmojis
        }
        return []
    }
}
