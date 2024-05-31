//
//  SettingsViewController.swift
//  LuxeCart
//
//  Created by Janvi Arora on 31/05/24.
//

import UIKit

class SettingsViewController: LCBaseViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func configureNavBar() {
        let backBarItem = UIBarButtonItem(image: UIImage(named: "back")?.withRenderingMode(.alwaysOriginal), style: .plain, target: self, action: #selector(backBarItemTap))

        let saveBarItem = UIBarButtonItem(image: UIImage(named: "CheckCircle")?.withRenderingMode(.alwaysOriginal), style: .plain, target: self, action: #selector(saveBarItemTap))

        navigationItem.leftBarButtonItem = backBarItem
        navigationItem.rightBarButtonItem = saveBarItem
    }

    @objc
    private func backBarItemTap() {
        navigationController?.popViewController(animated: true)
    }

    @objc
    private func saveBarItemTap() {
        let overlayView = SuccessOverlayView()
        overlayView.appear(sender: self)
    }
}
