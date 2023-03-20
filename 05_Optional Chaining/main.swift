//
//  main.swift
//  swift_practice
//
//  Created by Maggie Li on 3/20/23.
//

import Foundation


struct BlogPost {
    let title: String?
}

let post: BlogPost? = BlogPost(title: "You")
print(post?.title?.count ?? 0)



let imagePaths = ["star": "/glyphs/star.png",
                  "portrait": "/images/content/portrait.jpg",
                  "spacer": "/images/shared/spacer.gif"]

// Optional Binding
let starPath: String?

if let starPath = imagePaths["star"] {
    print("The star image is at '\(starPath)'")
} else {
    print("no information")
}

//Optional Chaining
if imagePaths["star"]?.hasSuffix(".png") == true {
    print("The star image is in PNG format")
}

//Using the Nil-Coalescing Operator
let defaultImagePath = "/images/default.png"
let heartPath = imagePaths["heart"] ?? defaultImagePath
print(heartPath)

struct Album {
    let name: String
    var releaseYear: Int?
}

struct Song {
    let title: String
    let released: Int
    var album: Album?
}

func getAlbumReleaseYear(song: Song) -> Int {
    return song.album?.releaseYear ?? 0
}

//Implement the getCapitalCity() function. Given a Country as input, return the name of the capital city. If the capital city is nil, return an empty string.

struct Country {
    let name: String
    var capital: City?
}

struct City {
    let name: String
}

func getCapitalCity(country: Country) -> String {
    return country.capital?.name ?? ""
}


struct Person {
    let firstName: String?
    let lastName: String?
}

func getFullName(person: Person) -> String {
    let firstName = person.firstName ?? ""
    let lastName = person.lastName ?? ""
    return firstName + " " + lastName
}

struct Address {
    let street: String?
    let city: String?
    let state: String?
    let zipCode: String?
}

func getFormattedAddress(address: Address) -> String {
    let street = address.street ?? ""
    let city = address.city ?? ""
    let state = address.state ?? ""
    let zipCode = address.zipCode ?? ""
    let components = [street, city, state, zipCode].filter { !$0.isEmpty }
    return components.joined(separator: ", ")
}
    
struct PhoneNumber {
    let countryCode: String?
    let areaCode: String?
    let exchangeCode: String?
    let lineNumber: String?
}

func getFormattedPhoneNumber(phoneNumber: PhoneNumber) -> String {
    guard let areaCode = phoneNumber.areaCode, let exchangeCode = phoneNumber.exchangeCode else {
            return ""
        }
        let countryCode = phoneNumber.countryCode ?? ""
        let lineNumber = phoneNumber.lineNumber ?? ""
        return "+\(countryCode) (\(areaCode)) \(exchangeCode)-\(lineNumber)"
}

struct User {
    let name: String?
    let age: Int?
}

func getUserInfo(user: User) -> String {
    let name = user.name ?? ""
    let age = user.age ?? 0
    return "\(name) \(age)"
}

struct Person {
    let firstName: String?
    let lastName: String?
}

func getFullNames(person: Person) -> String {
    let firstName = person.firstName ?? ""
    let lastName = person.lastName ?? ""
    return "\(firstName) \(lastName)"
}

struct Item {
    let name: String
    let price: Double?
    let quantity: Int?
}

func calculatePrice(item: Item) -> Double {
    let price = item.price ?? 0.0
    let quatity = item.quantity ?? 0
    let subtotal = price * Double(quatity)
    let taxRate = 0.08
    let tax = subtotal * taxRate
    let totalPrice = subtotal + tax
    return totalPrice
}

