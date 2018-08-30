//
//  VisitedPlacesViewController.swift
//  Places
//
//  Created by Rick Wolter on 8/30/18.
//  Copyright © 2018 RNWolter. All rights reserved.
//

import UIKit
import MapKit
class VisitedPlacesViewController: UIViewController, PlacesPresenter, PlaceSelectionDelegate {

    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    func placeWasSelected(place: Place) {
    mapViewController?.location = place.location
    }
    private func updateMapViewLocation() {
        guard let location = location, isViewLoaded else { return }
        
        let span = MKCoordinateSpan(latitudeDelta: 1, longitudeDelta: 1)
        let coordinate = CLLocationCoordinate2D(latitude: location.latitude, longitude: location.longitude)
        let region = MKCoordinateRegion(center: coordinate, span: span)
        
        mapView.setRegion(region, animated: true)
    }
    
    // MARK: - Properties
    
    var location: (latitude: Double, longitude: Double)? {
        didSet {
            updateMapViewLocation()
        }
    }

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        if segue.identifier == "PlacesTable" {
            
            guard let placesTVC = segue.destination as? PlacesTableViewController else {return}
            
            placesTVC.placeController = placeController
            placesTVC.delegate = self
            
            placesTableViewController = placesTVC
            
        } else if segue.identifier == "MapView" {
            guard let mapVC = segue.destination as? MapViewController else { return }
            mapViewController = mapVC
        }
    }
    var mapViewController: MapViewController?
    var placesTableViewController: PlacesTableViewController?
    
        var placeController: PlaceController?
}
