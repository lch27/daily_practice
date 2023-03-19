////
////  main.swift
////  String Manipulation Practice
////
////  Created by Maggie Li on 3/15/23.
////
//
//import Foundation
//
//let str = "Hello, world!"
//let substring = str.prefix(5) // returns "Hello"
//print(substring) // prints "Hello"
//
//let suffix = str.suffix(6) // returns "world!"
//print(suffix) // prints "world!"
//
//let dropped = str.dropFirst(7) // returns "world!"
//print(dropped) // prints "world!"
//
//
////Write a function called reverseWords that takes in a string and returns a new string with the words in reverse order.
//
//func reverseWords(_ str: String) -> String {
//    let words = str.split(separator: " ")
//    let reversedWords = words.reversed()
//    let reversedString = reversedWords.joined(separator: " ")
//    return reversedString
//}
//
////Write a function called isAnagram that takes in two strings and returns true if the strings are anagrams of each other, and false otherwise.
//
//func isAnagram(_ str1: String, _ str2: String) -> Bool {
//    print(str1.sorted())
//    print(str2.sorted())
//
//    return str1.lowercased().sorted() == str2.lowercased().sorted()
//}
//
//
////Write a function called reverseString that takes in a string and returns a new string with the characters in reverse order.
//
//func reverseString(_ str: String) -> String {
//    let reversedString = String(str.reversed())
//    return reversedString
//}
//
////Write a function called countVowels that takes in a string and returns the number of vowels (a, e, i, o, u) in the string.
//func countVowels(_ str: String) -> Int {
//    let vowels: Set<Character> = ["a", "e", "i", "o", "u"]
//    var count = 0
//
//    for char in str.lowercased() {
//        if vowels.contains(char) {
//            count += 1
//        }
//    }
//
//    return count
//}
//
