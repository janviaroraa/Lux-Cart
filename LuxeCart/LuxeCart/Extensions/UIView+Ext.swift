//
//  UIView+Ext.swift
//  LuxeCart
//
//  Created by Janvi Arora on 26/05/24.
//

import UIKit

extension UIView {
    func addSubviews(_ views: UIView...) {
        views.forEach { view in
            addSubview(view)
        }
    }
}
