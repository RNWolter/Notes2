//
//  ClassmateController.swift
//  Classmates2
//
//  Created by Rick Wolter on 8/27/18.
//  Copyright © 2018 RNWolter. All rights reserved.
//

import Foundation

class ClassmateController {
    
    ///CRUD for databases and model controllers this is usually the four functions -- Create-Read-Update-Delete
    
    func createClassmate(withName name: String, favoriteColor: String, favoriteApp: String)  -> Classmate{
        
        let classmate = Classmate(name: name, favoriteColor: favoriteColor, favoriteApp: favoriteApp)
        classmates.append(classmate)
        return classmate
        
    }
    
    
    func update(classmate: Classmate, withName name: String, favoriteColor: String, favoriteApp: String){
        
        guard let index = classmates.index(of: classmate) else {return}
        var scratch = classmate
        scratch.name = name
        scratch.favoriteColor = favoriteColor
        scratch.favoriteApp = favoriteApp
            
            classmates.remove(at: index)
            classmates.insert(scratch, at: index)
            
        
        
        
    }
    
    var classmates: [Classmate] = []
    
    
    
    
    
    
    
    
    
    
}
