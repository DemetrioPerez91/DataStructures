//
//  StackObject.swift
//  DataStructures
//
//  Created by User on 9/5/17.
//  Copyright © 2017 DemetrioPerez. All rights reserved.
//

import UIKit

class StackObject: NSObject
{
     var deck:[String] = []
    
    private let noCards = "No more cards in deck"
    func push(card:String)
    {
        deck.append(card)
    }
    
    func peek()->String
    {
        if let card = deck.last
        {
            return card
        }
        else
        {
            return noCards
        }
    }
    
    func pop() ->String
    {
        if let card = deck.popLast()
        {
            return card
        }
        else
        {
            return noCards
        }
    }

}
