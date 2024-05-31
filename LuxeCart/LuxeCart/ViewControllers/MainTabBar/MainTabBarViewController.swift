//
//  MainTabBarViewController.swift
//  LuxeCart
//
//  Created by Janvi Arora on 31/05/24.
//

import Foundation
import UIKit

class MainTabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        configureTabs()
        configureBackground()
    }

    private func configureTabs() {
        viewControllers = LCTabItems.allCases.map { $0.navItem() }
        tabBar.tintColor = .black
        tabBar.unselectedItemTintColor = .black
        selectedIndex = LCTabItems.allCases.firstIndex(of: .home) ?? 0
    }

    private func configureBackground() {
        let layer = CAShapeLayer()
        layer.path = UIBezierPath(roundedRect: CGRect(x: 0, y: self.tabBar.bounds.minY - 15, width: self.tabBar.bounds.width, height: self.tabBar.bounds.height + 50), cornerRadius: (self.tabBar.frame.width/2)).cgPath
        layer.shadowColor = UIColor.lightGray.cgColor
        layer.shadowOffset = CGSize(width: 5.0, height: 5.0)
        layer.shadowRadius = 25.0
        layer.shadowOpacity = 0.8
        layer.borderWidth = 1.0
        layer.opacity = 1.0
        layer.isHidden = false
        layer.masksToBounds = false
        layer.fillColor = UIColor.white.cgColor

        self.tabBar.layer.insertSublayer(layer, at: 0)
    }
}
