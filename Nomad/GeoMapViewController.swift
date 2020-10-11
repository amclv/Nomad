//
//  GeoMapViewController.swift
//  Nomad
//
//  Created by Aaron Cleveland on 10/11/20.
//

import UIKit
import MapKit

class GeoMapViewController: UIViewController {
    
    let mapKit: MKMapView = {
        let map = MKMapView()
        map.translatesAutoresizingMaskIntoConstraints = false
        return map
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        subviews()
        constraints()
    }
}

extension GeoMapViewController {
    private func subviews() {
        view.addSubview(mapKit)
    }
    
    private func constraints() {
        NSLayoutConstraint.activate([
            mapKit.topAnchor.constraint(equalTo: view.topAnchor),
            mapKit.leftAnchor.constraint(equalTo: view.leftAnchor),
            mapKit.rightAnchor.constraint(equalTo: view.rightAnchor),
            mapKit.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
    }
}
