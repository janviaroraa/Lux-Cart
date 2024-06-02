//
//  EmptySearchCollectionViewCell.swift
//  LuxeCart
//
//  Created by Janvi Arora on 02/06/24.
//

import UIKit

class EmptySearchCollectionViewCell: UICollectionViewCell {

    static let identifier = "EmptySearchCollectionViewCell"

    private var contentStackView = LCStackView(spacing: 0, backgroundColor: .secondarySystemBackground)
    private var imageView = LCImageView(cornerRadius: 8)
    private var productLabel = LCLabel(boldFontSize: 20)
    private var numberOfProductsLabel = LCLabel(fontSize: 14)

    override init(frame: CGRect) {
        super.init(frame: frame)
        addViews()
        layoutConstraints()

        #warning("Remove below code on configuring API data")
        imageView.image = UIImage(named: "productImage")?.withRenderingMode(.alwaysOriginal)
        productLabel.text = "New Arrivals"
        numberOfProductsLabel.text = "208 Products"
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    private func setupUI() {
        productLabel.textAlignment = .center
        numberOfProductsLabel.textAlignment = .center
    }

    private func addViews() {
        contentView.addSubviews(imageView, contentStackView)
        contentStackView.addArrangedSubviews(productLabel, numberOfProductsLabel)
    }

    private func layoutConstraints() {
        NSLayoutConstraint.activate([
            imageView.topAnchor.constraint(equalTo: contentView.topAnchor),
            imageView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            imageView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            imageView.heightAnchor.constraint(equalToConstant: 200),

            contentStackView.centerXAnchor.constraint(equalTo: imageView.centerXAnchor),
            contentStackView.centerYAnchor.constraint(equalTo: imageView.centerYAnchor),
            contentStackView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            contentStackView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
        ])
    }

    func configure() {

    }
}
