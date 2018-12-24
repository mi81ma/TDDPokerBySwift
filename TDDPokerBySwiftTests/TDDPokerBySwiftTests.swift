//
//  TDDPokerBySwiftTests.swift
//  TDDPokerBySwiftTests
//
//  Created by masato on 22/12/2018.
//  Copyright © 2018 masato. All rights reserved.
//

import XCTest
@testable import TDDPokerBySwift


class TDDPokerBySwiftTests: XCTestCase {

    func testInitializeCard() {

        var card: Card

       card = Card(suit: .heart, rank: .three)
        XCTAssertEqual(card.suit, .heart)
        XCTAssertEqual(card.rank, .three)


        card = Card(suit: .spade, rank: .jack)
        XCTAssertEqual(card.suit, .spade)
        XCTAssertEqual(card.rank, .jack)

    }

    func testCardNotation() {
        let card = Card(suit: .heart, rank: .three)
        XCTAssertEqual(card.notation, "3♥")
    }

}
