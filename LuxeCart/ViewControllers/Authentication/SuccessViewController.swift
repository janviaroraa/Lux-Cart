//
//  SuccessViewController.swift
//  LuxeCart
//
//  Created by Janvi Arora on 27/05/24.
//

import UIKit

class SuccessViewController: LCBaseViewController {

    private var successImage = LCImageView(imageName: "CheckCircle")

    private var successLabel = LCLabel(text: "Successful!", boldFontSize: 40)
    private var descLabel = LCLabel(text: "You have successfully registered in our app. Please click on 'Start Shopping' to continue with our app.", fontSize: 18, textColor: .lightGray)

    private var proceedButton = LCButton(title: "Start Shopping!", backgroundColor: .black, titleColor: .white, cornerRadius: 25)

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func setupUI() {
        successImage.tintColor = .systemGreen
        descLabel.numberOfLines = 0
    }

    override func addViews() {
        view.addSubviews(successImage, successLabel, descLabel, proceedButton)
    }

    override func setTargets() {
        proceedButton.addTarget(self, action: #selector(proceedButtonTap), for: .touchUpInside)
    }

    override func layoutConstraints() {
        NSLayoutConstraint.activate([
            descLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            descLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            descLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
            descLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30),

            successLabel.bottomAnchor.constraint(equalTo: descLabel.topAnchor, constant: -10),
            successLabel.leadingAnchor.constraint(equalTo: descLabel.leadingAnchor),
            successLabel.trailingAnchor.constraint(equalTo: descLabel.trailingAnchor),

            successImage.bottomAnchor.constraint(equalTo: successLabel.topAnchor, constant: -20),
            successImage.widthAnchor.constraint(equalToConstant: 40),
            successImage.heightAnchor.constraint(equalToConstant: 40),
            successImage.centerXAnchor.constraint(equalTo: view.centerXAnchor),

            proceedButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
            proceedButton.leadingAnchor.constraint(equalTo: descLabel.leadingAnchor),
            proceedButton.trailingAnchor.constraint(equalTo: descLabel.trailingAnchor),
            proceedButton.heightAnchor.constraint(equalToConstant: 50)
        ])
    }

    @objc
    private func proceedButtonTap() {
        let vc = DemoViewController()
        navigationController?.setViewControllers([vc], animated: true)
    }
}
