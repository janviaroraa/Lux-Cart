//
//  CategoriesViewController.swift
//  LuxeCart
//
//  Created by Janvi Arora on 31/05/24.
//

import UIKit

class CategoriesViewController: LCBaseViewController {

    private var categoriesLabel = LCLabel(text: "Categories", boldFontSize: 30, textAlignment: .left)

    private lazy var tableView: UITableView = {
        let tbl = UITableView()
        tbl.translatesAutoresizingMaskIntoConstraints = false
        tbl.delegate = self
        tbl.dataSource = self
        tbl.register(CategoriesTableViewCell.self, forCellReuseIdentifier: CategoriesTableViewCell.identifier)
        return tbl
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func addViews() {
        view.addSubviews(categoriesLabel, tableView)
    }

    override func layoutConstraints() {
        NSLayoutConstraint.activate([
            categoriesLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 10),
            categoriesLabel.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20),
            categoriesLabel.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -20),

            tableView.topAnchor.constraint(equalTo: categoriesLabel.bottomAnchor, constant: 10),
            tableView.leadingAnchor.constraint(equalTo: categoriesLabel.leadingAnchor),
            tableView.trailingAnchor.constraint(equalTo: categoriesLabel.trailingAnchor),
            tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
        ])
    }

    override func configureNavBar() {
        let backBarItem = UIBarButtonItem(image: UIImage(named: "back")?.withRenderingMode(.alwaysOriginal), style: .plain, target: self, action: #selector(backBarItemTap))

        let searchBarItem = UIBarButtonItem(barButtonSystemItem: .search, target: self, action: #selector(searchBarItemTap))
        searchBarItem.imageInsets = UIEdgeInsets(top: 0, left: 40, bottom: 0, right: 0)
        searchBarItem.tintColor = .black

        let avatarBarItem = UIBarButtonItem(image: UIImage(named: "avatar")?.withRenderingMode(.alwaysOriginal), style: .plain, target: self, action: #selector(avatarBarItemTap))

        navigationItem.leftBarButtonItem = backBarItem
        navigationItem.rightBarButtonItems = [avatarBarItem, searchBarItem]
    }

    @objc
    private func backBarItemTap() {
        navigationController?.popViewController(animated: true)
    }

    @objc
    private func searchBarItemTap() {

    }

    @objc
    private func avatarBarItemTap() {
        let vc = ProfileViewController()
        navigationController?.pushViewController(vc, animated: true)
    }
}

extension CategoriesViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        6
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: CategoriesTableViewCell.identifier, for: indexPath) as? CategoriesTableViewCell else { return UITableViewCell() }
        return cell
    }
}

extension CategoriesViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        80
    }
}
