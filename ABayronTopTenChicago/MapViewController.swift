//
//  MapViewController.swift
//  ABayronTopTenChicago
//
//  Created by Audi Bayron on 3/10/17.
//  Copyright © 2017 NIU Computer Science. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation

class MapViewController: UIViewController, CLLocationManagerDelegate {

    var manager = CLLocationManager()
    
    var mapData0:String! // Attraction Name
    var mapData1:Double! // Latitude
    var mapData2:Double! // Longitude
    
    @IBOutlet weak var mapView: MKMapView!
    
    // Zooms in on the Attraction
    @IBAction func locateAttractionButton(sender: UIBarButtonItem) {
        let span = MKCoordinateSpanMake(0.03, 0.03)
        let region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: mapData1, longitude: mapData2), span: span)
        
        mapView.setRegion(region, animated: true)
    }
    
    func locationManager(manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        let userlocation:CLLocation = locations[0] as CLLocation
        manager.stopUpdatingLocation()
        let location = CLLocationCoordinate2D(latitude: userlocation.coordinate.latitude, longitude: userlocation.coordinate.longitude)
        
        let span = MKCoordinateSpanMake(0.5, 0.5)
        
        let region = MKCoordinateRegion(center: location, span: span)
        
        mapView.setRegion(region, animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Places a pin on the attraction
        let pinLocation: CLLocationCoordinate2D = CLLocationCoordinate2DMake(mapData1, mapData2)
        let objAnnimation = MKPointAnnotation()
        objAnnimation.coordinate = pinLocation
        objAnnimation.title = mapData0
        
        let span = MKCoordinateSpanMake(0.05, 0.05)
        let region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: mapData1, longitude: mapData2), span: span)
        
        mapView.setRegion(region, animated: true)
        self.mapView.addAnnotation(objAnnimation)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
