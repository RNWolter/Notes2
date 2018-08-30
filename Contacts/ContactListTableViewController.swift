//
//  ContactListTableViewController.swift
//  Contacts
//
//  Created by Rick Wolter on 8/22/18.
//  Copyright © 2018 RNWolter. All rights reserved.
//

import UIKit

class ContactListTableViewController: UITableViewController {
    
    
let contacts = ["Sam","Sarah","Gworge","Lori"]
    
  
    // MARK: - Table view data source
    
    
    //How many sections should there be in the table view
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    //How many cells there should be
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return contacts.count
    }

    //What informtion should be displayed in each cell
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "ContactCell", for: indexPath)
        
        let contact = contacts[indexPath.row]
        cell.textLabel?.text = contact
        
        

        // Configure the cell...

        return cell
    }
   
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        
        
        if segue.identifier == "ContactDetail" {
        
            // Get the new view controller using segue.destinationViewController.
            let contactDetailVC = segue.destination as? ContactDetailViewController
            
            // Pass the selected object to the new view controller.
            guard let indexPath = tableView.indexPathForSelectedRow else { return }
            
            let contact = contacts[indexPath.row]
            
            contactDetailVC?.contact = contact
            
            
            
        }
    }
   

}









