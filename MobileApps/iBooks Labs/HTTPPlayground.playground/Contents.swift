//: Playground - noun: a place where people can play

import UIKit
import PlaygroundSupport

PlaygroundPage.current.needsIndefiniteExecution = true;

let url = URL(string: "https://www.apple.com")!
let task = URLSession.shared.dataTask(with: url) { (data,
    response, error) in
    if let data = data {
        print(data)
    }
}

let task2 = URLSession.shared.dataTask(with: url){
    (data, response, error) in
    if let data = data,
        let string = String(data: data, encoding: .utf8){
            print(string)
    }
}

task.resume()

