//
//  CategoriesViewController.swift
//  LuxeCart
//
//  Created by Janvi Arora on 31/05/24.
//

import UIKit

class CategoriesViewController: LCBaseViewController {

    private var categoriesLabel = LCLabel(text: "Categories", boldFontSize: 30, textAlignment: .left)

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func addViews() {
        view.addSubviews(categoriesLabel)
    }

    override func layoutConstraints() {
        NSLayoutConstraint.activate([
            categoriesLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 10),
            categoriesLabel.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20),
            categoriesLabel.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -20),
        ])
    }

    override func configureNavBar() {
        let backBarItem = UIBarButtonItem(image: UIImage(named: "back")?.withRenderingMode(.alwaysOriginal), style: .plain, target: self, action: #selector(backBarItemTap))

        let searchBarItem = UIBarButtonItem(barButtonSystemItem: .search, target: self, action: #selector(searchBarItemTap))
        searchBarItem.imageInsets = UIEdgeInsets(top: 0, left: 40, bottom: 0, right: 0)
        searchBarItem.tintColor = .black

        let avatarBarItem = UIBarButtonItem(image: UIImage(named: "avatar")?.withRenderingMode(.alwaysOriginal), style: .plain, target: self, action: #selector(avatarBarItemTap))

        navigationItem.leftBarButtonItem = backBarItem
        navigationItem.rightBarButtonItems = [avatarBarItem, searchBarItem]
    }

    @objc
    private func backBarItemTap() {
        navigationController?.popViewController(animated: true)
    }

    @objc
    private func searchBarItemTap() {

    }

    @objc
    private func avatarBarItemTap() {
        let vc = ProfileViewController()
        navigationController?.pushViewController(vc, animated: true)
    }
}
