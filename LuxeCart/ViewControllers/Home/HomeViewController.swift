//
//  HomeViewController.swift
//  LuxeCart
//
//  Created by Janvi Arora on 31/05/24.
//

import UIKit

class HomeViewController: LCBaseViewController {

    private var welcomeLabel = LCLabel(text: "Welcome Username", boldFontSize: 30, textAlignment: .left)
    private var subtitleLabel = LCLabel(text: "Luxé Cart - My Life, My Style", fontSize: 14, textAlignment: .left)

    private lazy var collectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal

        let cv = UICollectionView(frame: .zero, collectionViewLayout: layout)
        cv.translatesAutoresizingMaskIntoConstraints = false
        cv.showsHorizontalScrollIndicator = false
        cv.dataSource = self
        cv.delegate = self
        cv.register(ProductsCollectionViewHeaderCell.self, forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: ProductsCollectionViewHeaderCell.identifier)
        cv.register(ProductsCollectionViewCell.self, forCellWithReuseIdentifier: ProductsCollectionViewCell.identifier)
        return cv
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func addViews() {
        view.addSubviews(welcomeLabel, subtitleLabel, collectionView)
    }

    override func layoutConstraints() {
        NSLayoutConstraint.activate([
            welcomeLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 10),
            welcomeLabel.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20),
            welcomeLabel.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -20),

            subtitleLabel.topAnchor.constraint(equalTo: welcomeLabel.bottomAnchor),
            subtitleLabel.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20),
            subtitleLabel.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -20),

            collectionView.topAnchor.constraint(equalTo: subtitleLabel.bottomAnchor, constant: 10),
            collectionView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20),
            collectionView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -20),
            collectionView.heightAnchor.constraint(equalToConstant: 150)
        ])
    }

    override func configureNavBar() {
        let menuBarItem = UIBarButtonItem(image: UIImage(named: "menu")?.withRenderingMode(.alwaysOriginal), style: .plain, target: self, action: #selector(menuBarItemTap))

        let searchBarItem = UIBarButtonItem(barButtonSystemItem: .search, target: self, action: #selector(searchBarItemTap))
        searchBarItem.imageInsets = UIEdgeInsets(top: 0, left: 40, bottom: 0, right: 0)
        searchBarItem.tintColor = .black

        let avatarBarItem = UIBarButtonItem(image: UIImage(named: "avatar")?.withRenderingMode(.alwaysOriginal), style: .plain, target: self, action: #selector(avatarBarItemTap))

        navigationItem.leftBarButtonItem = menuBarItem
        navigationItem.rightBarButtonItems = [avatarBarItem, searchBarItem]
    }

    @objc
    private func menuBarItemTap() {
        let vc = CategoriesViewController()
        navigationController?.pushViewController(vc, animated: true)
    }

    @objc
    private func searchBarItemTap() {
        let vc = EmptySearchViewController()
        navigationController?.pushViewController(vc, animated: true)
    }

    @objc
    private func avatarBarItemTap() {
        let vc = ProfileViewController()
        navigationController?.pushViewController(vc, animated: true)
    }
}

extension HomeViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        10
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: ProductsCollectionViewCell.identifier, for: indexPath) as? ProductsCollectionViewCell else { return UICollectionViewCell () }
        return cell
    }

    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        guard let cell = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: ProductsCollectionViewHeaderCell.identifier, for: indexPath) as? ProductsCollectionViewHeaderCell else { return UICollectionReusableView() }
        return cell
    }

}

extension HomeViewController: UICollectionViewDelegate {

}

extension HomeViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize {
        return CGSize(width: collectionView.frame.width, height: 50)
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.frame.width, height: 100)
    }
}
