//
//  LCLabel.swift
//  LuxeCart
//
//  Created by Janvi Arora on 27/05/24.
//

import UIKit

class LCLabel: UILabel {
    
    init(text: String, 
         fontSize: CGFloat,
         textAlignment: NSTextAlignment = .center,
         textColor: UIColor = .black
    ) {
        super.init(frame: .zero)
        translatesAutoresizingMaskIntoConstraints = false
        self.text = text
        self.textAlignment = textAlignment
        self.textColor = textColor
        self.font = .systemFont(ofSize: fontSize)
    }

    init(text: String, 
         boldFontSize: CGFloat,
         textAlignment: NSTextAlignment = .center,
         textColor: UIColor = .black
    ) {
        super.init(frame: .zero)
        translatesAutoresizingMaskIntoConstraints = false
        self.text = text
        self.textAlignment = textAlignment
        self.textColor = textColor
        self.font = .boldSystemFont(ofSize: boldFontSize)
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
