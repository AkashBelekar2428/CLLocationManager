//
//  ViewController.swift
//  CurrentLocation
//
//  Created by Akash Belekar on 03/08/23.
//

import UIKit
import CoreLocation
import MapKit

class ViewController: UIViewController {
    
    var manager:CLLocationManager?

    override func viewDidLoad() {
        super.viewDidLoad()
            locationManager()
    }

    func locationManager(){
        manager = CLLocationManager()
        manager?.delegate = self
        manager?.desiredAccuracy = kCLLocationAccuracyBest
        manager?.requestAlwaysAuthorization()
        manager?.startUpdatingLocation()
    }

}

extension ViewController : CLLocationManagerDelegate{
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        print("location",locations)
    }
}
