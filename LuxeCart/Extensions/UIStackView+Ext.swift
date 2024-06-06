//
//  UIStackView+Ext.swift
//  LuxeCart
//
//  Created by Janvi Arora on 27/05/24.
//

import UIKit

extension UIStackView {
    func addArrangedSubviews(_ views: UIView...) {
        views.forEach { view in
            addArrangedSubview(view)
        }
    }
}
