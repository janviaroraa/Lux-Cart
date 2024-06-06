//
//  CategoriesTableViewCell.swift
//  LuxeCart
//
//  Created by Janvi Arora on 02/06/24.
//

import UIKit

class CategoriesTableViewCell: UITableViewCell {
    static let identifier = "CategoriesTableViewCell"

    private var contentStack = LCStackView(spacing: 4, axis: .horizontal, layoutMargins: UIEdgeInsets(top: 0, left: 30, bottom: 0, right: 30))
    private var productStack = LCStackView(spacing: 0, axis: .horizontal, layoutMargins: UIEdgeInsets(top: 0, left: 30, bottom: 0, right: 30))
    private var productIcon = LCImageView(systemName: "suitcase.cart.fill")
    private var productLabel = LCLabel(text: "New Arrivals", boldFontSize: 20, textColor: .white)
    private var numberOfProductsLabel = LCLabel(text: "208 products", fontSize: 14, textAlignment: .right, textColor: .white)

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupUI()
        addViews()
        layoutConstraints()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    private func setupUI() {
        contentStack.backgroundColor = .black
        contentView.layer.cornerRadius = contentView.frame.height / 2
        contentView.layer.masksToBounds = true
        productIcon.tintColor = .white
        productIcon.contentMode = .scaleAspectFit
    }

    override func layoutSubviews() {
        super.layoutSubviews()
        contentView.layer.cornerRadius = contentView.frame.height / 2
    }

    private func addViews() {
        contentView.addSubviews(contentStack)
        contentStack.addArrangedSubviews(productStack, numberOfProductsLabel)
        productStack.addArrangedSubviews(productIcon, productLabel)
    }

    private func layoutConstraints() {
        NSLayoutConstraint.activate([
            contentStack.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 2),
            contentStack.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            contentStack.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            contentStack.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -2),

            productIcon.widthAnchor.constraint(equalToConstant: 30),
            productIcon.heightAnchor.constraint(equalToConstant: 30)
        ])
    }

    func configure() {

    }
}
