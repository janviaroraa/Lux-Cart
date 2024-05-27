//
//  LCTextField.swift
//  LuxeCart
//
//  Created by Janvi Arora on 27/05/24.
//

import UIKit

class LCTextField: UITextField {

    init(backgroundColor: UIColor = .clear, cornerRadius: CGFloat = 8, borderColor: CGColor? = UIColor.secondarySystemBackground.cgColor, borderWidth: CGFloat = 2) {
        super.init(frame: .zero)
        translatesAutoresizingMaskIntoConstraints = false
        self.backgroundColor = backgroundColor
        layer.cornerRadius = cornerRadius
        layer.borderWidth = borderWidth
        layer.borderColor = borderColor
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
