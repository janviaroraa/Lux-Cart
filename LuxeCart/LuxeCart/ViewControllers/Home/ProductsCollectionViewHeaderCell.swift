//
//  ProductsCollectionViewHeaderCell.swift
//  LuxeCart
//
//  Created by Janvi Arora on 02/06/24.
//

import UIKit

class ProductsCollectionViewHeaderCell: UICollectionReusableView {
    static let identifier = "ProductsCollectionViewHeaderCell"

    private var productTypeLabel = LCLabel(text: "New Arrivals", boldFontSize: 16, textAlignment: .left)
    private var viewAllLabel = LCLabel(text: "View All", fontSize: 14, textAlignment: .right)


}
