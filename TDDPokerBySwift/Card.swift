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
}


