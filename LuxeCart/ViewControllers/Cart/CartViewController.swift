//
//  CartViewController.swift
//  LuxeCart
//
//  Created by Janvi Arora on 31/05/24.
//

import UIKit

class CartViewController: LCBaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func configureNavBar() {
        let menuBarItem = UIBarButtonItem(image: UIImage(named: "menu")?.withRenderingMode(.alwaysOriginal), style: .plain, target: self, action: #selector(menuBarItemTap))

        let searchBarItem = UIBarButtonItem(barButtonSystemItem: .search, target: self, action: #selector(searchBarItemTap))
        searchBarItem.imageInsets = UIEdgeInsets(top: 0, left: 40, bottom: 0, right: 0)
        searchBarItem.tintColor = .black

        let avatarBarItem = UIBarButtonItem(image: UIImage(named: "avatar")?.withRenderingMode(.alwaysOriginal), style: .plain, target: self, action: #selector(avatarBarItemTap))

        navigationItem.leftBarButtonItem = menuBarItem
        navigationItem.rightBarButtonItems = [avatarBarItem, searchBarItem]
    }

    @objc
    private func menuBarItemTap() {
        let vc = CategoriesViewController()
        navigationController?.pushViewController(vc, animated: true)
    }

    @objc
    private func searchBarItemTap() {
        let vc = EmptySearchViewController()
        navigationController?.pushViewController(vc, animated: true)
    }

    @objc
    private func avatarBarItemTap() {
        let vc = ProfileViewController()
        navigationController?.pushViewController(vc, animated: true)
    }
}

