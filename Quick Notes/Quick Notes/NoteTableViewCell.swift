//
//  NoteTableViewCell.swift
//  Quick Notes
//
//  Created by Rick Wolter on 8/29/18.
//  Copyright © 2018 RNWolter. All rights reserved.
//

import UIKit

protocol NoteTableViewCellDelegate: class {
    func shareNote(for cell: NoteTableViewCell)
}

class NoteTableViewCell: UITableViewCell {

    @IBAction func shareNote(_ sender: Any){
        // Table view controller go call your shareNote function
        delegate?.shareNote(for: self)
    }
    
    
    func updateViews() {
        
        guard let note = note else { return }
        noteLabel.text = note.text
    }

    var note: Note? {
        didSet {
            updateViews()
        }
    }
    
   
    
   
    
    
    weak var delegate: NoteTableViewCellDelegate?
     @IBOutlet weak var noteLabel: UILabel!
   
}
