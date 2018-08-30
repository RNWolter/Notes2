//
//  ContactsManager.swift
//  Friends
//
//  Created by Rick Wolter on 8/20/18.
//  Copyright © 2018 RNWolter. All rights reserved.
//

import Foundation

//var contacts = [Contact]()


class ContactsManager{
    var contacts = [Contact]()
    
    init(){}
    
    
    func createContact(name: String, phoneNumber: String) -> Contact{
        let contact = Contact(name: name, number: phoneNumber)
        self.contacts.append(contact)
        return contact
    
    }

}
