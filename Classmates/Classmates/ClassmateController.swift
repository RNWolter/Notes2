//
//  ClassmateController.swift
//  Classmates
//
//  Created by Rick Wolter on 8/27/18.
//  Copyright © 2018 RNWolter. All rights reserved.
//

import Foundation


class ClassmateController {
    
    
    // Handle interactions between model and the rest of App
    // CRUD   Create Read Update Delete
    
    
    
    // Recieving the text from the textfields and creating a classmate from them
    func createClassmate(with name: String, favoriteColor: String, favoriteApp: String){
        
        let classmate = Classmate(name: name, favoriteColor: favoriteColor, favoriteApp: favoriteApp)
        
        classmates.append(classmate)
        
    }
    
   
    
    
    func update(classmate: Classmate, name: String, favoriteColor: String, favoriteApp: String ){
        
        guard let index = classmates.index(of: classmate) else {return}
        
        
        var scratch = classmate
        
        scratch.name = name
        scratch.favoriteApp = favoriteApp
        scratch.favoriteColor = favoriteColor
        classmates.remove(at: index)
        
        
        
    }
    
    
    
    private(set) var classmates: [Classmate] = []
    
}
