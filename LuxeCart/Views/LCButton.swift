//
//  LCButton.swift
//  LuxeCart
//
//  Created by Janvi Arora on 26/05/24.
//

import Foundation
import UIKit

class LCButton: UIButton {

    init(title: String, 
         backgroundColor: UIColor = .clear,
         titleColor: UIColor = .white,
         cornerRadius: CGFloat = 0,
         borderColor: CGColor? = nil,
         borderWidth: CGFloat = 0
    ) {
        super.init(frame: .zero)
        translatesAutoresizingMaskIntoConstraints = false
        setTitle(title, for: .normal)
        setTitleColor(titleColor, for: .normal)
        self.backgroundColor = backgroundColor
        layer.cornerRadius = cornerRadius
        layer.borderWidth = borderWidth
        layer.borderColor = borderColor
    }

    init(imageName: String) {
        super.init(frame: .zero)
        translatesAutoresizingMaskIntoConstraints = false
        setImage(UIImage(named: imageName)?.withRenderingMode(.alwaysOriginal), for: .normal)
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
