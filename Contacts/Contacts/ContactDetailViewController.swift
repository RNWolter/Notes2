//
//  ContactDetailViewController.swift
//  Contacts
//
//  Created by Rick Wolter on 8/22/18.
//  Copyright © 2018 RNWolter. All rights reserved.
//

import UIKit

class ContactDetailViewController: UIViewController {

    @IBOutlet weak var contactNameLabel: UILabel!
    
    var contact: String?  {
        didSet {
            updateViews()
        }
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateViews()
        // Do any additional setup after loading the view.
    }
    
    func updateViews(){
        
        guard isViewLoaded else { return }
        contactNameLabel.text = contact
    
    }
    
    
    
    
    
   

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
