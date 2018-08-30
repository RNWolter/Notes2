//
//  ItemController.swift
//  Collection
//
//  Created by Rick Wolter on 8/27/18.
//  Copyright © 2018 RNWolter. All rights reserved.
//

import Foundation

class ItemController {
    
    private(set) var items: [Item] = []
    
    func createNewItem(name: String, worth value: String, from location: String) -> Item {
        
        let item = Item(name: name, value: value, location: location)
        items.append(item)
        return item
        
    }
    
    func updateItem(item: Item, name: String, value: String, location: String){
    
    guard let indexOfItem = items.index(of: item) else{return}
    
    var scratch = item
    scratch.name = name
    scratch.value = value
    scratch.location = location
       
     items.remove(at: indexOfItem)
    items.insert(scratch, at: indexOfItem)
        
    }
    
    }
    
    
    
    
    

