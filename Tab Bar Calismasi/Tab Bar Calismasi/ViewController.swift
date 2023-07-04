//
//  ViewController.swift
//  Tab Bar Calismasi
//
//  Created by Samet on 4.07.2023.
//

import UIKit

class ViewController: UIViewController {
    
    
    
    var homeSayac = 0
    var settingSayac = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
    }

    @IBAction func homeArttir(_ sender: Any) {
        if let tabItems = tabBarController?.tabBar.items {
            
            let homeTabBarItem = tabItems[0]
            
            
            homeSayac = homeSayac + 1
            
            homeTabBarItem.badgeColor = UIColor.purple
            homeTabBarItem.badgeValue = String(homeSayac)
            
        }
    }
    
    @IBAction func settingsArttir(_ sender: Any) {
        if let tabItems = tabBarController?.tabBar.items {
            
            let settingTabBarItem = tabItems[1]
            
            settingSayac = settingSayac + 1
            
            settingTabBarItem.badgeColor = UIColor.blue
            settingTabBarItem.badgeValue = String(settingSayac)
            
        }
    }
}

