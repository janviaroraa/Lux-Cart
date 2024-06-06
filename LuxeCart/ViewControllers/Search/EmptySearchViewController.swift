//
//  EmptySearchViewController.swift
//  LuxeCart
//
//  Created by Janvi Arora on 02/06/24.
//

import UIKit

class EmptySearchViewController: LCBaseViewController {

    private lazy var collectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()

        let cv = UICollectionView(frame: .zero, collectionViewLayout: layout)
        cv.translatesAutoresizingMaskIntoConstraints = false
        cv.showsVerticalScrollIndicator = false
        cv.delegate = self
        cv.dataSource = self
        cv.register(EmptySearchCollectionViewCell.self, forCellWithReuseIdentifier: EmptySearchCollectionViewCell.identifier)
        return cv
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func addViews() {
        view.addSubviews(collectionView)
    }

    override func layoutConstraints() {
        NSLayoutConstraint.activate([
            collectionView.topAnchor.constraint(equalTo: view.topAnchor, constant: 10),
            collectionView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            collectionView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10),
            collectionView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -10),
        ])
    }

    override func configureNavBar() {
        let cancelBarButtonItem = UIBarButtonItem(barButtonSystemItem: .cancel, target: self, action: #selector(cancelBarButtonItemTap))

        navigationItem.rightBarButtonItems = [cancelBarButtonItem]
    }

    @objc
    private func cancelBarButtonItemTap() {
        navigationController?.popViewController(animated: true)
    }
}

extension EmptySearchViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        10
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: EmptySearchCollectionViewCell.identifier, for: indexPath) as? EmptySearchCollectionViewCell else { return UICollectionViewCell() }
        return cell
    }
}

extension EmptySearchViewController: UICollectionViewDelegate {

}

extension EmptySearchViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        CGSize(width: view.bounds.width/2 - 15, height: 300)
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        10
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        10
    }
}
