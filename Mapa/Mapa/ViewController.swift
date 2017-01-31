//
//  ViewController.swift
//  Mapa
//
//  Created by Luis Chávez on 13/08/16.
//  Copyright © 2016 UNAM Mobile. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController {

    @IBOutlet weak var mapView: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //19.453193, -99.144169
        
        let location = CLLocationCoordinate2D(latitude: 19.453193, longitude: -99.144169)
        
        let dropPin = MKPointAnnotation()
        dropPin.coordinate = location
        dropPin.title = "Tlatelolco"
        dropPin.subtitle = "UNAM"
        
        mapView.addAnnotation(dropPin)
        
        var region: MKCoordinateRegion = MKCoordinateRegion(center: location, span: MKCoordinateSpanMake(0.009, 0.009))
        region = mapView.regionThatFits(region)
        mapView.setRegion(region, animated: true)
    }

    @IBAction func typeAction(sender: AnyObject) {
        let segButton = sender as! UISegmentedControl
        
        switch segButton.selectedSegmentIndex {
        case 0:
            mapView.mapType = MKMapType.Satellite
            break
        case 1:
            mapView.mapType = MKMapType.Standard
            break
        case 2:
            mapView.mapType = MKMapType.HybridFlyover
            break
        default:
            break
        }
    
    }

    
    
    
    
    
    
    
    


}

