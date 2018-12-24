//
//  File.swift
//  TDDPokerBySwiftTests
//
//  Created by masato on 22/12/2018.
//  Copyright © 2018 masato. All rights reserved.
//

import Foundation

struct  Card {
    enum Suit {
        case spade
        case heart
        case club
        case diamond

    }

    enum Rank {
        case ace
        case two
        case three
        case four
        case five
        case six
        case seven
        case eight
        case nine
        case ten
        case jack
        case queen
        case king
    }


    let suit: Suit
    let rank: Rank

    var notation: String {
        return "3♥"
    }
}


//enum CardError: Error { case unexpectedValue }
//
//struct Card {
//    let suit: String
//    let rank: Int
//
//    init(suie: String, rank: Int) throws {
//
//        switch suit {
//
//        case "spade", "heart", "club", "diamond":
//            self.suit = suit
//        default:
//            throw CardError.unexpectedValue
//        }
//
//        switch rank {
//        case 1..<14:
//            self.rank = rank
//        default:
//            throw CardError.unexpectedValue
//        }
//    }
//}
//
//
//var card: Card?
//do {
//    card = try Card(suie: "clover", rank: 14)
//} catch {
//    print(error) // <-  errSSLUnexpectedValue
//}
