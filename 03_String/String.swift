//
//  01_Title.swift
//  swift_practice
//
//  Created by Maggie Li on 3/19/23.
//

import Foundation

var myFavoriteAnimal = "cat"
let encouragement = "You can do it!"
print("The string is \(encouragement.count) characters long")


func checkLength(message: String) -> Bool {
    let length = message.count
    if length < 10 || length > 10000{
      return false
    } else {
        return true
    }
}


func isPalindrome(input: String) -> Bool {
    let reversedWord = String(input.reversed())
   if reversedWord == input {
       return true
   } else {
       return false
   }
}


func search(s1: String, s2: String) -> Bool {
   return s1.lowercased().range(of: s2.lowercased()) != nil
}
Footer
© 2023 GitHub, Inc.
Footer navigation
Terms
Privacy
Security
Status
Docs
Contact GitHub
Pricing
API
Training
Blog
About
daily_practice/String at main · lch27/daily_practice
