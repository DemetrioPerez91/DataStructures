//
//  StackViewController.swift
//  DataStructures
//
//  Created by User on 9/5/17.
//  Copyright © 2017 DemetrioPerez. All rights reserved.
//

import UIKit

class StackViewController: UIViewController {

    let stack = StackObject()
    @IBOutlet weak var deckTextView: UITextView!
    @IBOutlet weak var topCardLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func pushJack(_ sender: Any)
    {
        stack.push(card: "Jack")
        deckTextView.text = "Jack\n\(deckTextView.text!)"
    }
    
    @IBAction func pushQueen(_ sender: Any)
    {
        stack.push(card: "Queen")
        deckTextView.text = "Queen\n\(deckTextView.text!)"
    }
    
    @IBAction func pushKing(_ sender: Any)
    {
        stack.push(card: "King")
        deckTextView.text = "King\n\(deckTextView.text!)"
        
    }
    
    @IBAction func pushAce(_ sender: Any)
    {
        stack.push(card: "Ace")
        deckTextView.text = "Ace\n\(deckTextView.text!)"
       
    }
    
    @IBAction func peekTop(_ sender: Any)
    {
        topCardLabel.text = "\(stack.peek()) is on top"
    }
    
    
    @IBAction func popCard(_ sender: Any)
    {
        topCardLabel.text = "\(stack.pop()) was removed from deck"
        deckTextView.text = ""
        for card in stack.deck
        {
            deckTextView.text = "\(card)\n\(deckTextView.text!)"
        }
        
    }
    
    
    
    

}
