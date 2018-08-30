//
//  NoteController.swift
//  Quick Notes
//
//  Created by Rick Wolter on 8/29/18.
//  Copyright © 2018 RNWolter. All rights reserved.
//

import Foundation

class NoteController {
    
    
    // Create
    
    
    func createNote(with text: String) {
        
        let note = Note(text: text)
        notes.append(note)
    }
    
    
    // Delete
    func delete(note: Note){
        
        guard let index = notes.index(of: note) else { return }
        
        notes.remove(at: index)
    }
    
    
    // Read
    
    private (set) var notes: [Note] = []
    
    
    
    
}
