//
//  ViewController.swift
//  Friends
//
//  Created by Rick Wolter on 8/20/18.
//  Copyright © 2018 RNWolter. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var numberTextField: UITextField!
    @IBOutlet weak var textView: UITextView!
    

    let contactsManager = ContactsManager()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func contactsButton (){
        
        guard let name: String = nameTextField.text else { return }
        guard let number: String = numberTextField.text else { return }
        let currentText = "\(textView.text!)\n  \(name) \(number)"
        textView.text = currentText
        
        
        //textView.text = String(contactsManager)
      contactsManager.contacts.append(contactsManager.createContact(name: name, phoneNumber: number))
        
    }
    
    func refreshView(){
        
        //textView.text = String(contactsManager.contacts)
    }


}

