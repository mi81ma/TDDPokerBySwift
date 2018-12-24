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

        let card = Card(suit: .heart, rank: .three)
        XCTAssertEqual(card.suit, .heart)
        XCTAssertEqual(card.rank, .three)


        let card2 = Card(suit: .spade, rank: .jack)
        XCTAssertEqual(card2.suit, .spade)
        XCTAssertEqual(card2.rank, .jack)

    }
}
