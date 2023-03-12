//
//  main.swift
//  practice_optionals
//
//  Created by Maggie Li on 3/12/23.
//

import Foundation

enum Genre: String {
    case country, blues, folk
}

struct Artist {
    let name: String
    var primaryGenre: Genre?
}

struct Song {
    let title: String
    let released: Int
    let artist: Artist?
}

//let walkTheLine: Song = Song(title: "stary", released: 32823, artist: Artist(name: "John"))
let walkTheLine: Song = Song(title: "Walk the Line", released: 32823, artist: Artist(name: "John"))

if let artist = walkTheLine.artist?.name {
    print(artist)
} else {
    print("Artist unknown")
}

let jack: Artist = Artist(name: "Jack", primaryGenre: nil)

if let primaryGenre = jack.primaryGenre {
    print(primaryGenre)
} else {
    print("Genre unknown")
}


