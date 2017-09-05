//
//  List.swift
//  DataStructures
//
//  Created by User on 9/5/17.
//  Copyright © 2017 DemetrioPerez. All rights reserved.
//

import UIKit

class List: NSObject {
    var head:Node?
    
    
    func insert(value:String)
    {
        if self.head == nil
        {
            self.head = Node()
            self.head?.value = value
            print("\(head?.value)")
        }
        else
        {
            var lastNode  = self.head
            
            while lastNode?.next != nil
            {
                lastNode = lastNode?.next
            }
            
            lastNode?.next = Node()
            lastNode?.next?.value = value
            print("\(lastNode?.next?.value)")
        }
    }
    
    
    func remove(value:String)
    {
        if value == self.head?.value
        {
            self.head = self.head?.next
        }
        else
        {
            var previousNode = self.head
            var node = self.head?.next
            while node?.value != value
            {
                previousNode = node!
                node = node?.next
            }
            
            if node != nil
            {
                previousNode?.next = node?.next
            }
            else
            {
                previousNode?.next = nil
            }
            
        }
        
    }
    
    func printAllKeys() {
        var current: Node! = self.head
        print("---------------")
        while current != nil && current.value != nil {
            print("The item is \(current.value!)")
            current = current.next
        }
    }
}
