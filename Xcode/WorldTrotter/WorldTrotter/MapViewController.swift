//
//  MapViewController.swift
//  WorldTrotter
//
//  Created by Alejandro on 28/06/18.
//  Copyright © 2018 Alejandro. All rights reserved.
//

import UIKit
import MapKit

class MapViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        print("MapViewController loaded its view.")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    var mapView: MKMapView!
    
    @objc func mapTypeChanged(_ segControl: UISegmentedControl) {
        switch segControl.selectedSegmentIndex {
        case 0:
            mapView.mapType = .standard
        case 1:
            mapView.mapType = .hybrid
        case 2:
            mapView.mapType = .satellite
        default:
            break }
    }
    
    override func loadView() {
        // Create a map view
        mapView = MKMapView()
        // Set it as *the* view of this view controller
        view = mapView
        
        let segmentedControl = UISegmentedControl(items: ["Standard", "Hybrid", "Satellite"])
        segmentedControl.backgroundColor = UIColor.white.withAlphaComponent(0.5)
        segmentedControl.selectedSegmentIndex = 0
        segmentedControl.addTarget(self,
                                   action: #selector(MapViewController.mapTypeChanged(_:)), for: .valueChanged)
        segmentedControl.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(segmentedControl)
        
        //        let topConstraint
        //            = segmentedControl.topAnchor.constraint(equalTo: view.topAnchor)
        let safeGuide = self.view.safeAreaLayoutGuide
        let topConstraint =
            segmentedControl.topAnchor.constraint(equalTo: safeGuide.topAnchor)
        
        //        let leadingConstraint
        //            = segmentedControl.leadingAnchor.constraint(equalTo: view.leadingAnchor)
        //        let trailingConstraint
        //            = segmentedControl.trailingAnchor.constraint(equalTo: view.trailingAnchor)
        let margins = view.layoutMarginsGuide
        let leadingConstraint =
            segmentedControl.leadingAnchor.constraint(equalTo: margins.leadingAnchor)
        let trailingConstraint =
            segmentedControl.trailingAnchor.constraint(equalTo: margins.trailingAnchor)
        
        
        topConstraint.isActive = true
        leadingConstraint.isActive = true
        trailingConstraint.isActive = true
    }

}
