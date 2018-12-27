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


    var isStraightFlush: Bool {
        if cards[0].suit == cards[1].suit {
            if ((cards[0].rank == .ace) && (cards[1].rank == .two)) || ((cards[0].rank == .two) &&  (cards[1].rank == .ace)) {
                return true
            }

            if ((cards[0].rank == .two) && (cards[1].rank == .three)) || ((cards[0].rank == .three) &&  (cards[1].rank == .two)) {
                return true
            }

            if ((cards[0].rank == .three) && (cards[1].rank == .four)) || ((cards[0].rank == .four) &&  (cards[1].rank == .three)) {
                return true
            }

            if ((cards[0].rank == .four) && (cards[1].rank == .five)) || ((cards[0].rank == .five) &&  (cards[1].rank == .four)) {
                return true
            }

            if ((cards[0].rank == .five) && (cards[1].rank == .six)) || ((cards[0].rank == .six) &&  (cards[1].rank == .five)) {
                return true
            }

            if ((cards[0].rank == .six) && (cards[1].rank == .seven)) || ((cards[0].rank == .seven) &&  (cards[1].rank == .six)) {
                return true
            }

            if ((cards[0].rank == .seven) && (cards[1].rank == .eight)) || ((cards[0].rank == .eight) &&  (cards[1].rank == .seven)) {
                return true
            }

            if ((cards[0].rank == .eight) && (cards[1].rank == .nine)) || ((cards[0].rank == .nine) &&  (cards[1].rank == .eight)) {
                return true
            }

            if ((cards[0].rank == .nine) && (cards[1].rank == .ten)) || ((cards[0].rank == .ten) &&  (cards[1].rank == .nine)) {
                return true
            }

            if ((cards[0].rank == .ten) && (cards[1].rank == .jack)) || ((cards[0].rank == .jack) &&  (cards[1].rank == .ten)) {
                return true
            }

            if ((cards[0].rank == .jack) && (cards[1].rank == .queen)) || ((cards[0].rank == .queen) &&  (cards[1].rank == .jack)) {
                return true
            }

            if ((cards[0].rank == .queen) && (cards[1].rank == .king)) || ((cards[0].rank == .king) &&  (cards[1].rank == .queen)) {
                return true
            }

            if ((cards[0].rank == .king) && (cards[1].rank == .ace)) || ((cards[0].rank == .ace) &&  (cards[1].rank == .king)) {
                return true
            }
        }


            return false
        }

    var isPair: Bool {
        return cards[0].rank == cards[1].rank
    }


    var isFlush: Bool {
        return cards[0].suit == cards[1].suit
    }


    var isStraight: Bool {
        if ((cards[0].rank == .ace) && (cards[1].rank == .two)) || ((cards[0].rank == .two) &&  (cards[1].rank == .ace)) {
            return true
        }

        if ((cards[0].rank == .two) && (cards[1].rank == .three)) || ((cards[0].rank == .three) &&  (cards[1].rank == .two)) {
            return true
        }

        if ((cards[0].rank == .three) && (cards[1].rank == .four)) || ((cards[0].rank == .four) &&  (cards[1].rank == .three)) {
            return true
        }

        if ((cards[0].rank == .four) && (cards[1].rank == .five)) || ((cards[0].rank == .five) &&  (cards[1].rank == .four)) {
            return true
        }

        if ((cards[0].rank == .five) && (cards[1].rank == .six)) || ((cards[0].rank == .six) &&  (cards[1].rank == .five)) {
            return true
        }

        if ((cards[0].rank == .six) && (cards[1].rank == .seven)) || ((cards[0].rank == .seven) &&  (cards[1].rank == .six)) {
            return true
        }

        if ((cards[0].rank == .seven) && (cards[1].rank == .eight)) || ((cards[0].rank == .eight) &&  (cards[1].rank == .seven)) {
            return true
        }

        if ((cards[0].rank == .eight) && (cards[1].rank == .nine)) || ((cards[0].rank == .nine) &&  (cards[1].rank == .eight)) {
            return true
        }

        if ((cards[0].rank == .nine) && (cards[1].rank == .ten)) || ((cards[0].rank == .ten) &&  (cards[1].rank == .nine)) {
            return true
        }

        if ((cards[0].rank == .ten) && (cards[1].rank == .jack)) || ((cards[0].rank == .jack) &&  (cards[1].rank == .ten)) {
            return true
        }

        if ((cards[0].rank == .jack) && (cards[1].rank == .queen)) || ((cards[0].rank == .queen) &&  (cards[1].rank == .jack)) {
            return true
        }

        if ((cards[0].rank == .queen) && (cards[1].rank == .king)) || ((cards[0].rank == .king) &&  (cards[1].rank == .queen)) {
            return true
        }

        if ((cards[0].rank == .king) && (cards[1].rank == .ace)) || ((cards[0].rank == .ace) &&  (cards[1].rank == .king)) {
            return true
        }

        return false
    }


    var isHighCard: Bool {
        return !isPair && !isFlush
    }
}
