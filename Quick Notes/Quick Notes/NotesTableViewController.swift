//
//  NotesTableViewController.swift
//  Quick Notes
//
//  Created by Rick Wolter on 8/29/18.
//  Copyright © 2018 RNWolter. All rights reserved.
//

import UIKit

class NotesTableViewController: UITableViewController, NoteTableViewCellDelegate {
    
    
    func shareNote(for cell: NoteTableViewCell) {
        // Do want you want..cell doesnt care
        guard let note = cell.note else { return }
        
        let activityController = UIActivityViewController(activityItems: [note.text], applicationActivities: nil)
        
        present(activityController, animated: true, completion: nil)
    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return noteController.notes.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "NoteCell", for: indexPath) as? NoteTableViewCell else { return UITableViewCell() }
        
        // Get an instance of note from noteController and pass to cell
        // Configure the cell...
        let note = noteController.notes[indexPath.row]
        
        cell.note = note
        cell.delegate = self
        
        return cell
    }
    
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        
        if editingStyle == .delete {
            // Delete the row from the data source
            let note = noteController.notes[indexPath.row]
            
            noteController.delete(note: note)
            
            //delete the cell
            tableView.deleteRows(at: [indexPath], with: .automatic)
        }
    }
    @IBAction func addNote(_ sender: Any) {
        
        guard let text = noteTextView.text else { return }
        
        noteController.createNote(with: text)
        
        tableView.reloadData()
        noteTextView.text = ""
        
        
    }
    

    
    
    

    @IBOutlet weak var noteTextView: UITextView!
    
    
    let noteController = NoteController()
    
}






