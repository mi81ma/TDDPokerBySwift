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

    func testCradNotation() {
        var card: Card

        card = Card(rank: .three, suit: .heart)
        XCTAssertEqual(card.notation, "3♥")

        card = Card(rank: .jack, suit: .spade)
        XCTAssertEqual(card.notation, "J♠")
    }


    func testHasSameSuit() {

        var card1: Card
        var card2: Card

        card1 = Card(rank: .ace, suit: .heart)
        card2 = Card(rank: .two, suit: .heart)
        XCTAssertTrue(card1.hasSameSuit(card2))


        card1 = Card(rank: .ace, suit: .spade)
        card2 = Card(rank: .two, suit: .heart)
        XCTAssertFalse(card1.hasSameSuit(card2))
    }


    func testHasSameRank() {
        var card1: Card
        var card2: Card

        card1 = Card(rank: .two, suit: .spade)
        card2 = Card(rank: .two, suit: .heart)
        XCTAssertTrue(card1.hasSameRank(card2))

        card1 = Card(rank: .ace, suit: .spade)
        card2 = Card(rank: .two, suit: .heart)
        XCTAssertFalse(card1.hasSameRank(card2))
    }


    func testCardEqual() {
        XCTAssertEqual(
            Card(rank: .jack, suit: .club),
            Card(rank: .jack, suit: .club)
        )

        XCTAssertNotEqual(
            Card(rank: .queen, suit: .diamond),
            Card(rank: .jack, suit: .club)
        )

        XCTAssertNotEqual(
            Card(rank: .jack, suit: .diamond),
            Card(rank: .jack, suit: .club)
        )

        XCTAssertNotEqual(
            Card(rank: .queen, suit: .club),
            Card(rank: .jack, suit: .club)
        )
    }




    func testIsPair() {
        let card1 = Card(rank: .king, suit: .spade)
        let card2 = Card(rank: .king, suit: .heart)
        let hand1 = Hand(cards: [card1,card2])
        XCTAssertTrue(hand1.isPair)

        let card3 = Card(rank: .queen, suit: .spade)
        let card4 = Card(rank: .king, suit: .heart)
        let hand2 = Hand(cards: [card3, card4])
        XCTAssertFalse(hand2.isPair)

    }

}
