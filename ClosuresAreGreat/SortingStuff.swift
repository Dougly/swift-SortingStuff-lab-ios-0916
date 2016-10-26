//
//  SortingStuff.swift
//  ClosuresAreGreat
//
//  Created by Jim Campagno on 10/25/16.
//  Copyright © 2016 Gamesmith, LLC. All rights reserved.
//

import Foundation


struct ToyBin {
    
    var ships: [Ship] = []
    var books: [Book] = []
    var bowlingPins: [BowlingPin] = []
    var musicCDs: [MusicCD] = []
    
    // TODO: Implement all of the sort functions (lets organize this toy bin!)
    
    mutating func sortShips () {
        ships = ships.sorted { firstShip, SecondShip in
            return firstShip.age > SecondShip.age
        }
        
        for (index, ship) in ships.enumerated() {
            if ship.name == "Titanic" {
                ships.remove(at: index)
                ships.insert(ship, at: 0)
                break
            }
        }
        dump(ships)
    }
    
    mutating func sortBooks () {
        books = books.sorted { return $0.name < $1.name }
        dump(books)
    }
    
    mutating func sortBowlingPins () {
        bowlingPins = bowlingPins.sorted { return $0.color.rawValue < $1.color.rawValue }
        dump(bowlingPins)
    }
    
    mutating func sortMusicCDs () {
        musicCDs = musicCDs.sorted { $0.name < $1.name }
        
        for (index, cd) in musicCDs.enumerated() {
            if cd.name == "Drake" {
                musicCDs.remove(at: index)
                musicCDs.insert(cd, at: 0)
            }
        }
    }
    
    mutating func changeColorOfAllPins(to color: Color) {
        bowlingPins = bowlingPins.map { pin -> BowlingPin in
            var newPin = pin
            newPin.changeColor(to: color)
            return newPin
        }
    }
}




struct Ship {
    var name: String
    var age: Int
}


struct Book {
    var name: String
    var year: Int
    var author: String
}


struct BowlingPin {
    var name: String
    var film: String
    var color: Color
    
    mutating func changeColor(to color:Color) {
        self.color = color
    }
    
}


enum Color: Int {
    case red, organe, yellow, green, blue, indigo, violet
}



struct MusicCD {
    var name: String
    var year: Int
    var songs: [String]
}
