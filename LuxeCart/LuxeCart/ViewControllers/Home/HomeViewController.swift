//
//  HomeViewController.swift
//  LuxeCart
//
//  Created by Janvi Arora on 31/05/24.
//

import UIKit

class HomeViewController: LCBaseViewController {

    private var welcomeLabel = LCLabel(text: "Welcome Username", boldFontSize: 30, textAlignment: .left)
    private var subtitleLabel = LCLabel(text: "Luxé Cart - My Life, My Style", fontSize: 14, textAlignment: .left)

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func addViews() {
        view.addSubviews(welcomeLabel, subtitleLabel)
    }

    override func layoutConstraints() {
        NSLayoutConstraint.activate([
            welcomeLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 10),
            welcomeLabel.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20),
            welcomeLabel.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -20),

            subtitleLabel.topAnchor.constraint(equalTo: welcomeLabel.bottomAnchor),
            subtitleLabel.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20),
            subtitleLabel.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -20),
        ])
    }

    override func configureNavBar() {
        let menuBarItem = UIBarButtonItem(image: UIImage(named: "menu")?.withRenderingMode(.alwaysOriginal), style: .plain, target: self, action: #selector(menuBarItemTap))

        let avatarBarItem = UIBarButtonItem(image: UIImage(named: "avatar")?.withRenderingMode(.alwaysOriginal), style: .plain, target: self, action: #selector(avatarBarItemTap))

        navigationItem.leftBarButtonItem = menuBarItem
        navigationItem.rightBarButtonItem = avatarBarItem
    }

    @objc
    private func menuBarItemTap() {
        let vc = CategoriesViewController()
        navigationController?.pushViewController(vc, animated: true)
    }

    @objc
    private func avatarBarItemTap() {
        let vc = ProfileViewController()
        navigationController?.pushViewController(vc, animated: true)
    }
}
