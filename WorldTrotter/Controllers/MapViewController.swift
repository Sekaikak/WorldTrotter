//
//  MapViewController.swift
//  WorldTrotter
//
//  Created by Kai on 5/24/20.
//  Copyright © 2020 Kai. All rights reserved.
//

import UIKit
import MapKit

class MapViewController: UIViewController {
    var mapView: MKMapView!
    
    override func loadView() {
        mapView = MKMapView()
        view = mapView
        
        generateControl()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @objc func pointInt(_ switchUI: UISwitch) {
        switch switchUI.isOn {
        case true:
            mapView.pointOfInterestFilter = .excludingAll
        default:
            mapView.pointOfInterestFilter = .includingAll
        }
    }
    
    @objc func mapTypeChanged(_ segControl: UISegmentedControl) {
        switch segControl.selectedSegmentIndex {
        case 0:
            mapView.mapType = .standard
        case 1:
            mapView.mapType = .hybrid
        case 2:
            mapView.mapType = .satellite
        default:
            break
        }
    }
}

extension MapViewController {
    func generateControl() {
        let segmentedControl = UISegmentedControl(items: ["Standard", "Hybrid", "Satellite"])
        segmentedControl.backgroundColor = UIColor.systemBackground
        segmentedControl.selectedSegmentIndex = 0
        
        segmentedControl.addTarget(self, action: #selector(mapTypeChanged(_:)), for: .valueChanged)
        segmentedControl.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(segmentedControl)
        
        let margins = view.layoutMarginsGuide
        
        segmentedControl.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 8).isActive = true
        segmentedControl.leadingAnchor.constraint(equalTo: margins.leadingAnchor).isActive = true
        segmentedControl.trailingAnchor.constraint(equalTo: margins.trailingAnchor).isActive = true
        
        let pointOfInterestLabel = UILabel()
        let pointOfInterestSwitch = UISwitch()
        pointOfInterestLabel.text = "Point of Interest"
        
        pointOfInterestSwitch.addTarget(self, action: #selector(pointInt(_:)), for: .valueChanged)
        pointOfInterestSwitch.translatesAutoresizingMaskIntoConstraints = false
        pointOfInterestLabel.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(pointOfInterestSwitch)
        view.addSubview(pointOfInterestLabel)
        
        pointOfInterestLabel.topAnchor.constraint(equalTo: segmentedControl.bottomAnchor, constant: 8).isActive = true
        pointOfInterestSwitch.topAnchor.constraint(equalTo: segmentedControl.bottomAnchor, constant: 8).isActive = true
        pointOfInterestLabel.leadingAnchor.constraint(equalTo: margins.leadingAnchor).isActive = true
        pointOfInterestSwitch.leadingAnchor.constraint(equalTo: pointOfInterestLabel.trailingAnchor, constant: 8).isActive = true
    }
}
