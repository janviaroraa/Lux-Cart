//
//  LaunchViewController.swift
//  LuxeCart
//
//  Created by Janvi Arora on 27/05/24.
//

import UIKit

class LaunchViewController: LCBaseViewController {

    private var signupbutton = LCButton(title: "Sign up", backgroundColor: .clear, cornerRadius: 25, borderColor: UIColor.white.cgColor, borderWidth: 2)

    private var loginbutton = LCButton(title: "Login", backgroundColor: .clear, cornerRadius: 25, borderColor: UIColor.white.cgColor, borderWidth: 2)

    override func viewDidLoad() {
        super.viewDidLoad()
    }

//    override func viewWillAppear(_ animated: Bool) {
//        super.viewWillAppear(animated)
//        navigationController?.isNavigationBarHidden = true
//    }

//    override func viewDidDisappear(_ animated: Bool) {
//        navigationController?.isNavigationBarHidden = false
//    }

    override func addViews() {
        view.addSubviews(signupbutton, loginbutton)
    }

    override func layoutConstraints() {
        NSLayoutConstraint.activate([
            signupbutton.bottomAnchor.constraint(equalTo: loginbutton.topAnchor, constant: -20),
            signupbutton.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 25),
            signupbutton.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -25),
            signupbutton.heightAnchor.constraint(equalToConstant: 50),

            loginbutton.leadingAnchor.constraint(equalTo: signupbutton.leadingAnchor),
            loginbutton.trailingAnchor.constraint(equalTo: signupbutton.trailingAnchor),
            loginbutton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -30),
            loginbutton.heightAnchor.constraint(equalToConstant: 50)
        ])
    }

    override func setTargets() {
        signupbutton.addTarget(self, action: #selector(signupbuttonTap), for: .touchUpInside)
        loginbutton.addTarget(self, action: #selector(loginbuttonTap), for: .touchUpInside)
    }

    @objc
    private func signupbuttonTap() {
        #warning ("Change it back to SignupViewController()")
        let vc = MainTabBarViewController()
        navigationController?.pushViewController(vc, animated: true)
    }

    @objc
    private func loginbuttonTap() {
        let vc = LoginViewController()
        navigationController?.pushViewController(vc, animated: true)
    }
}
