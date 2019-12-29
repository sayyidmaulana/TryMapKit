//
//  ViewController.swift
//  TryMapKit
//
//  Created by sayyid maulana khakul yakin on 29/12/19.
//  Copyright © 2019 sayyid maulana khakul yakin. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController {

    @IBOutlet weak var mapKit: MKMapView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // step 1
        mapKit.mapType = .hybrid
        let location = CLLocationCoordinate2DMake(-6.121435, 106.774124)
        // setp 2
        let span = MKCoordinateSpan(latitudeDelta: 0.05, longitudeDelta: 0.05)
        let region = MKCoordinateRegion(center: location, span: span)
        mapKit.setRegion(region, animated: true)
        // step 4
        let anotation = MKPointAnnotation()
        anotation.coordinate = location
        anotation.title = "Jakarta"
        anotation.subtitle = "Jakarta Utara"
        mapKit.addAnnotation(anotation)
        // Do any additional setup after loading the view.
    }


}

