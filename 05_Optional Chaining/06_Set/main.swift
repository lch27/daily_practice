//
//  06_Set.swift
//  swift_practice
//
//  Created by Maggie Li on 3/20/23.
//

import Foundation

//Implement the function countDistinct(numbers: [Int]) to return the number of distinct elements in the array. For example countDistinct(numbers: [20, 10, 10, 30, 20]) would return 3, because 10, 20, and 30 are the distinct elements

let num = [20, 10, 10, 30, 20]

func countDistinct(numbers: [Int]) -> Int {
    let distinct = Set(numbers)
    let sorted = distinct.sorted() {$0 < $1}
    
    return sorted.count
}

let distinctCount = countDistinct(numbers: num)
print("Number of distinct elements: \(distinctCount)")

