//
//  LCStackView.swift
//  LuxeCart
//
//  Created by Janvi Arora on 27/05/24.
//

import UIKit

class LCStackView: UIStackView {
    
    init(spacing: CGFloat, 
         axis: NSLayoutConstraint.Axis = .vertical,
         cornerRadius: CGFloat = 0,
         borderColor: CGColor? = nil,
         borderWidth: CGFloat = 0,
         layoutMargins: UIEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
    ) {
        super.init(frame: .zero)
        translatesAutoresizingMaskIntoConstraints = false
        self.axis = axis
        self.spacing = spacing
        layer.cornerRadius = cornerRadius
        layer.borderWidth = borderWidth
        layer.borderColor = borderColor
        isLayoutMarginsRelativeArrangement = true
        self.layoutMargins = layoutMargins
    }
    
    required init(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
