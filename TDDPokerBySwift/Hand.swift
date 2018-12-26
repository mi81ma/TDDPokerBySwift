//
//  Hand.swift
//  TDDPokerBySwift
//
//  Created by masato on 26/12/2018.
//  Copyright © 2018 masato. All rights reserved.
//

import Foundation

struct Hand {
    let cards: [Card]

    var isPair: Bool {
        return cards[0].rank == cards[1].rank
    }


    var isFlush: Bool {
        return cards[0].suit == cards[1].suit
    }


    var isHighCard: Bool {
        return !isPair && !isFlush
    }
}
