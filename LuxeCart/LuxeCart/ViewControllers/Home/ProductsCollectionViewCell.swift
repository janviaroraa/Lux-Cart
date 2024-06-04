//
//  ProductsCollectionViewCell.swift
//  LuxeCart
//
//  Created by Janvi Arora on 02/06/24.
//

import UIKit

class ProductsCollectionViewCell: UICollectionViewCell {
    static let identifier = "ProductsCollectionViewCell"

    private var contentStackView = LCStackView(spacing: 0, backgroundColor: .secondarySystemBackground)
    private var imageView = LCImageView(cornerRadius: 8)
    private var productLabel = LCLabel(boldFontSize: 20)
    private var productDescLabel = LCLabel(fontSize: 14)
    private var productPriceLabel = LCLabel(fontSize: 14)

    override init(frame: CGRect) {
        super.init(frame: frame)
        addViews()
        layoutConstraints()

        imageView.image = UIImage(named: "productImage")?.withRenderingMode(.alwaysOriginal)
        productLabel.text = "New Arrivals"
        productDescLabel.text = "Product Description"
        productPriceLabel.text = "$ 49.99 USD"
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    private func setupUI() {
        contentStackView.backgroundColor = .purple
        productLabel.textAlignment = .center
        productDescLabel.textAlignment = .center
        productPriceLabel.textAlignment = .center
    }

    private func addViews() {
        contentView.addSubviews(contentStackView)
        contentStackView.addArrangedSubviews(imageView, productLabel, productLabel, productPriceLabel)
    }

    private func layoutConstraints() {
        NSLayoutConstraint.activate([
            contentStackView.topAnchor.constraint(equalTo: contentView.topAnchor),
            contentStackView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            contentStackView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            contentStackView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor),


        ])
    }

    func configure() {

    }
}
