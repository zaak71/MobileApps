//: Playground - noun: a place where people can play

import UIKit

let myName = "Zuhair"


func sayHello(){
    print("Hello")
}

sayHello()

func sayHelloWithName(name: String){
    print("Hello \(name)")
}

sayHelloWithName(name: myName)


func sayHelloWithFullName(first: String, last: String){
    print("Hello \(first) \(last)!")
}

sayHelloWithFullName(first: myName, last: "Ali-Khan")

func addTwoNumbers(one: Int, two: Int){
    print(one+two)
}

addTwoNumbers(one: 20, two: 1)
