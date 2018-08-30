//
//  ClassmateTableViewController.swift
//  Classmates2
//
//  Created by Rick Wolter on 8/27/18.
//  Copyright © 2018 RNWolter. All rights reserved.
//

import UIKit

class ClassmateTableViewController: UITableViewController {

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        tableView.reloadData()
    }


    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return classmateController.classmates.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ClassmateCell", for: indexPath)

        // Configure the cell...
        
        let classmate = classmateController.classmates[indexPath.row]
        cell.textLabel?.text = classmate.name
        
        

        return cell
    }
    

    
    // MARK: - Navigation

   
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        
        if segue.identifier == "ShowAddClassmate"{
            // setup the detail view controller to add a new classmate
            
            
            guard let detailVC = segue.destination as? ClassmateDetailViewController else {return}
            
            detailVC.classmateController = classmateController
            
        } else if segue.identifier == "ShowClassmateDetail" {
            // setup the detail view controller with an existing classmate
            
            guard let detailVC = segue.destination as? ClassmateDetailViewController else {return}
            
            guard let indexPath = tableView.indexPathForSelectedRow else { return }
            
            detailVC.classmateController = classmateController
            
            detailVC.classmate = classmateController.classmates[indexPath.row]
            
        }
        
    }
    
    // MARK: properties
    let classmateController = ClassmateController()
    

}
