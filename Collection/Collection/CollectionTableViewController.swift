//
//  CollectionTableViewController.swift
//  Collection
//
//  Created by Rick Wolter on 8/27/18.
//  Copyright © 2018 RNWolter. All rights reserved.
//

import UIKit

class CollectionTableViewController: UITableViewController {
    
    let itemController = ItemController()
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        tableView.reloadData()
    }
   
    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return itemController.items.count
    }

  
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ItemCell", for: indexPath)

        // Configure the cell...
        let item = itemController.items[indexPath.row]
        cell.textLabel?.text = item.name

        return cell
    }
   
   
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
       if segue.identifier == "AddItemSegue" {
            
            guard let detailVC = segue.destination as? ItemDetailViewController else {return}
            
            detailVC.itemController = itemController
        } else if segue.identifier == "ShowDetailItemSegue" {
            
            guard let detailVC = segue.destination as? ItemDetailViewController else {return}
            
            guard let indexPath = tableView.indexPathForSelectedRow else {return}
            
            detailVC.itemController = itemController
            detailVC.item = itemController.items[indexPath.row]
        }
    }
    

}
