//
//  Concentration.swift
//  StanfordGhostApp
//
//  Created by Rick Wolter on 8/10/18.
//  Copyright © 2018 RNWolter. All rights reserved.
//

import Foundation

class Concentration
{
    var cards = [Card]()
    var indexOfOneAndOnlyFaceUpCard: Int?
    
    func choosecard(at index: Int){
        if !cards[index].isMatched{
            if let matchIndex = indexOfOneAndOnlyFaceUpCard, matchIndex != index{
            if cards[matchIndex].identifier == cards[index].identifier {
                cards[matchIndex].isMatched = true
                cards[index].isMatched = true
            }
            cards[index].isFaceUp = true
            indexOfOneAndOnlyFaceUpCard = nil
        } else {
            for flipDownIndex in cards.indices {
                cards[flipDownIndex].isFaceUp = false
                indexOfOneAndOnlyFaceUpCard = index
            }
        }
        }}
    
    
    init(numberOfPairsOfCards: Int){
        for _ in 1...numberOfPairsOfCards{
            let card = Card()
            cards += [card, card]
    }
        
        
        //shuffle cards
        
        }}
    

