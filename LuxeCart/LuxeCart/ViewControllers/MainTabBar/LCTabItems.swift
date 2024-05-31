//
//  LCTabItems.swift
//  LuxeCart
//
//  Created by Janvi Arora on 31/05/24.
//

import Foundation
import UIKit

enum LCTabItems: String, CaseIterable {
    case home
    case cart
    case notifications
    case profile

    var viewController: UIViewController {
        switch self {
        case .home:
            return HomeViewController()
        case .cart:
            return CartViewController()
        case .notifications:
            return NotificationsViewController()
        case .profile:
            return ProfileViewController()
        }
    }

    private var imageName: String {
        switch self {
        case .home:
            return "home"
        case .cart:
            return "cart"
        case .notifications:
            return "notification"
        case .profile:
            return "profile"
        }
    }

    private var selectedImageName: String {
        switch self {
        case .home:
            return "homeSelected"
        case .cart:
            return "cartSelected"
        case .notifications:
            return "notificationSelected"
        case .profile:
            return "profileSelected"
        }
    }

    var tabBarItem: UITabBarItem {
        let normalImage = UIImage(named: self.imageName)?.withRenderingMode(.alwaysOriginal)
        let selectedImage = UIImage(named: self.selectedImageName)?.withRenderingMode(.alwaysOriginal)
        let item = UITabBarItem(
            title: "",
            image: normalImage,
            selectedImage: selectedImage
        )
        return item
    }

    func navItem() -> UINavigationController {
        let navController = UINavigationController(rootViewController: viewController)
        navController.tabBarItem = tabBarItem
        return navController
    }
}
