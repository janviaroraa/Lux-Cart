//
//  LCBaseViewController.swift
//  LuxeCart
//
//  Created by Janvi Arora on 26/05/24.
//

import UIKit

class LCBaseViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        addViews()
        setTargets()
        layoutConstraints()
        setupUI()
    }

    /// Override this method to add your views
    func addViews() { }

    /// Override this method to set your targets
    func setTargets() { }

    /// Override this method to add your custom layouts
    func layoutConstraints() { }

    /// Override this method to add changes to your custom UI elements
    func setupUI() { }
}
