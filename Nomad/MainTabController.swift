//
//  MainTabController.swift
//  Nomad
//
//  Created by Aaron Cleveland on 10/11/20.
//

import UIKit

class MainTabController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        configureViewControllers()
    }
    
    func configureViewControllers() {
        let resources = ViewController()
        let nav1 = templateNavigationController(image: UIImage(named: "person"), rootViewController: resources)
        
        let explore = GeoMapViewController()
        let nav2 = templateNavigationController(image: UIImage(named: "person"), rootViewController: explore)
        
        let settings = SettingsViewController()
        let nav3  = templateNavigationController(image: UIImage(named: "person"), rootViewController: settings)
        
        viewControllers = [nav1, nav2, nav3]
    }
    
    func templateNavigationController(image: UIImage?, rootViewController: UIViewController) -> UINavigationController {
        let nav = UINavigationController(rootViewController: rootViewController)
        nav.navigationBar.isHidden = true
        return nav
    }
}
