//
//  PlacesTabBarViewController.swift
//  Places
//
//  Created by Rick Wolter on 8/30/18.
//  Copyright © 2018 RNWolter. All rights reserved.
//

import UIKit

protocol PlaceSelectionDelegate: class {
    func placeWasSelected(place: Place)
}

class PlacesTabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

       // Pass the place controller to the child view controllers (relationship view controllers)
        
        for childVC in childViewControllers {
            
            // If the child view controller conforms to PlacePresenter we know there is a plac controler property tpo pass places controller to
            if let childVC = childVC as? PlacesPresenter {
                    childVC.placeController = placeController
            }
            
        }
                
    }

    let placeController = PlaceController()
}
