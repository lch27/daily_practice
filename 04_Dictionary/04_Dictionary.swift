//  main.swift
//  dictionary
//
//  Created by Maggie Li on 3/19/23.
//

import Foundation

let input = [1, 3, 1, 1, 2, 7, 3, 5, 8, 5, 4, 9]

func frequency(numbers: [Int]) -> [Int: Int] {
    var frequency = [Int: Int]()
    for number in numbers {
        if let count = frequency[number] {
            frequency[number] = count + 1
        } else {
            frequency[number] = 1
        }
    }
    return frequency
}

let counts = frequency(numbers: input)

for (number, count) in counts {
    print("\(number) : \(count)")
}


//Write a function in Swift that takes an array of integers as input, and returns a new array with only the unique elements of the input array (i.e., all duplicates removed). For example, calling uniqueElements(array: [1, 2, 3, 2, 4, 1]) should return [1, 2, 3, 4].

let dic_input = [1, 2, 3, 2, 4, 1]

func uniqueElements(nums: [Int]) -> [Int] {
    var uniqueOrder : Set<Int> = []
    
    for i in nums {
        if !uniqueOrder.contains(i) {
            uniqueOrder.insert(i)
        }
    }
    return nums
}


