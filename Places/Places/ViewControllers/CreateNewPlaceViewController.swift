//
//  CreateNewPlaceViewController.swift
//  Places
//
//  Created by Rick Wolter on 8/30/18.
//  Copyright © 2018 RNWolter. All rights reserved.
//

import UIKit

class CreateNewPlaceViewController: UIViewController, PlacesPresenter {
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func createNewPlace(_ sender: Any){
        guard let name = nameTextField.text,
        let latitudeString = latitudeTextField.text,
        let latitude = Double(latitudeString),
            let longitudeString = longitudeTextField.text,
            let longitude = Double(longitudeString) else {return}
        
        placeController?.createPlace(with: )
        view.endEditing(true)
    }

    @IBOutlet weak var latitudeTextField: UITextField!
    @IBOutlet weak var longitudeTextField: UITextField!
    
    @IBOutlet weak var nameTextField: UITextField!
    var placeController: PlaceController?
}
