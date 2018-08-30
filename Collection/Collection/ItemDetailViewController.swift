//
//  ItemDetailViewController.swift
//  Collection
//
//  Created by Rick Wolter on 8/27/18.
//  Copyright © 2018 RNWolter. All rights reserved.
//

import UIKit

class ItemDetailViewController: UIViewController {

    
    
    @IBOutlet weak var itemTextField: UITextField!
    
    @IBOutlet weak var valueTextField: UITextField!
    
    @IBOutlet weak var locationTextField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateViews()
        // Do any additional setup after loading the view.
    }
    private func updateViews() {
    guard let item = item else {
        title = "New Item"
        return
    }
    title = item.name
        
        itemTextField.text = item.name
        valueTextField.text = item.value
        locationTextField.text = item.location
        
    }
   

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    @IBAction func save(_ sender: Any) {
        guard let name = itemTextField.text, let value = valueTextField.text, let location = locationTextField.text else {return}
        
        
        if let item = item {
            itemController?.updateItem(item: item, name: name, value: value, location: location)
        } else {
            let _ = itemController?.createNewItem(name: name, worth: value, from: location)
        }
        navigationController?.popViewController(animated: true)
    }
    var item: Item?
    var itemController: ItemController?
//    var item: Item? {
//        didSet {
//            updateViews()
//        }}
}
