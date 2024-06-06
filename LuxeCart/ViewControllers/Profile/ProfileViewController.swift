//
//  ProfileViewController.swift
//  LuxeCart
//
//  Created by Janvi Arora on 31/05/24.
//

import UIKit

class ProfileViewController: LCBaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func configureNavBar() {
        let backBarItem = UIBarButtonItem(image: UIImage(named: "back")?.withRenderingMode(.alwaysOriginal), style: .plain, target: self, action: #selector(backBarItemTap))

        let settingsBarItem = UIBarButtonItem(image: UIImage(named: "settings")?.withRenderingMode(.alwaysOriginal), style: .plain, target: self, action: #selector(settingsBarItemTap))

        navigationItem.leftBarButtonItem = backBarItem
        navigationItem.rightBarButtonItem = settingsBarItem
    }

    @objc
    private func backBarItemTap() {
        navigationController?.popViewController(animated: true)
    }

    @objc
    private func settingsBarItemTap() {
        let vc = SettingsViewController()
        navigationController?.pushViewController(vc, animated: true)
    }
}


