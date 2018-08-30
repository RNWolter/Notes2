//
//  ClassmatesTableViewController.swift
//  Classmates
//
//  Created by Rick Wolter on 8/27/18.
//  Copyright © 2018 RNWolter. All rights reserved.
//

import UIKit

class ClassmatesTableViewController: UITableViewController {

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        tableView.reloadData()
    }
    
    
    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return classmateController.classmates.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ClassmateCell", for: indexPath)
        
        let classmate = classmateController.classmates[indexPath.row]
        cell.textLabel?.text = classmate.name
        // Configure the cell...

        return cell
    }
    

   
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        //where are we going
        if segue.identifier == "AddClassmate" {
            
            guard let destinationVC = segue.destination as? ClassmateDetailViewController  else {return}
            destinationVC.classmateController = classmateController
            
        } else if segue.identifier == "ShowClassmate" {
            
             guard let destinationVC = segue.destination as? ClassmateDetailViewController, let indexPath = tableView.indexPathForSelectedRow else {return}
            
            
            let classmate = classmateController.classmates[index.row]
        
            
             destinationVC.classmateController = classmateController
            destinationVC.classmate = classmate
        }
        
        //what do we want to pass there
        
        // Get the new view controller using segue.destination
        // Pass the selected object to the new view controller.
    }
   
let classmateController = ClassmateController()
}
