//
//  MemorizeGame.swift
//  Memorize
//
//  Created by romankolivoshko on 22.07.2025.
//

import Foundation

struct MemoryGame<CardContent> {
    var cards: Array<Card>
        
    func choose(cars: Card) {
            
        }
    
    struct Card {
        var isFaceUp: Bool
        var isMatched: Bool
        var content: CardContent
    }
}
