//
//  ClassmateDetailViewController.swift
//  Classmates2
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

    
    @IBAction func save(_ sender: Any) {
        guard let name = name.text,
        let favoriteColor = favoriteColor.text,
        let favoriteApp = favoriteApp.text else {return}
        
        if let classmate = classmate {
            classmateController?.update(classmate: classmate, withName: name, favoriteColor: favoriteColor, favoriteApp: favoriteApp)
        } else {
            //create a new one
           let _ = classmateController?.createClassmate(withName: name, favoriteColor: favoriteColor, favoriteApp: favoriteApp)
        }
        navigationController?.popViewController(animated: true)
    }
    
    private func updateViews() {
        guard let classmate = classmate else {
            title = "New Classmate"
            return
        }
        title = classmate.name
        
        name.text = classmate.name
        favoriteColor.text = classmate.favoriteColor
        favoriteApp.text = classmate.favoriteApp
    }
    
    
    
    // MARK: -Properties
    
    
    var classmate: Classmate?
    var classmateController: ClassmateController?
    
    
    @IBOutlet weak var name: UITextField!
    @IBOutlet weak var favoriteColor: UITextField!
    @IBOutlet weak var favoriteApp: UITextField!
    
}
