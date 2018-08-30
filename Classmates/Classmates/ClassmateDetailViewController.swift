//
//  ClassmateDetailViewController.swift
//  Classmates
//
//  Created by Rick Wolter on 8/27/18.
//  Copyright © 2018 RNWolter. All rights reserved.
//

import UIKit

class ClassmateDetailViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        updateViews()

        // Do any additional setup after loading the view.
    }

  
    @IBAction func saveClassmate(_ sender: Any) {
        
        guard let name = nameTextField.text, let favoriteColor =    favColorTextField.text, let favoriteApp = favAppTextField.text else {return}
       
        if let classmate = classmate {
            //there is a clasmate update it
            classmateController?.update(classmate: classmate, name: name, favoriteColor: favoriteColor, favoriteApp: favoriteApp)
        }
        classmateController?.createClassmate(with: name, favoriteColor: favoriteColor, favoriteApp: favoriteApp)
        
        navigationController?.popViewController(animated: true)
        
    }
    
    // update the views
    private func updateViews() {
        
        guard let classmate = classmate else {
            
            title = "New Classmate"
            return }
        
        title = classmate.name
        // puts classmates values in textfield for user to see
        nameTextField.text = classmate.name
        favColorTextField.text = classmate.favoriteColor
        favAppTextField.text = classmate.favoriteApp
    }
    
    var classmate: Classmate?
    var classmateController: ClassmateController?

    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var favColorTextField: UITextField!
    @IBOutlet weak var favAppTextField: UITextField!
}
