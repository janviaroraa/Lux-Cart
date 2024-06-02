//
//  LoginViewController.swift
//  LuxeCart
//
//  Created by Janvi Arora on 27/05/24.
//

import UIKit

class LoginViewController: LCBaseViewController {

    private var appLogoImageView = LCImageView(imageName: "AppLogo")

    private var welcomeLabel = LCLabel(text: "Welcome!", boldFontSize: 20, textAlignment: .left)
    private var continueLabel = LCLabel(text: "Please enter your credentials to continue!", fontSize: 16, textAlignment: .left)

    private var emailLabel = LCLabel(text: "Email", boldFontSize: 18, textAlignment: .left)
    private var passwordLabel = LCLabel(text: "Password", boldFontSize: 18, textAlignment: .left)

    private var emailTextField = LCTextField()
    private var passwordTextField = LCTextField()

    private var loginButton = LCButton(title: "Login", backgroundColor: .black, titleColor: .white, cornerRadius: 25)
    private var separatorView = LCImageView(imageName: "Separator")

    private lazy var emptyView: UIView = {
        let view = UIView()
        view.backgroundColor = .clear
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()

    private var facebookButton = LCButton(title: "Continue with Facebook", backgroundColor: .systemBlue, titleColor: .white, cornerRadius: 25)
    private var googleButton = LCButton(title: "Continue with Google", backgroundColor: .systemRed, titleColor: .white, cornerRadius: 25)
    private var appleButton = LCButton(title: "Continue with Apple", backgroundColor: .black, titleColor: .white, cornerRadius: 25)

    private var emailAuthenticationStack = LCStackView(spacing: 4)
    private var passwordAuthenticationStack = LCStackView(spacing: 4)
    private var loginButtonsStack = LCStackView(spacing: 6)

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func addViews() {
        view.addSubviews(appLogoImageView, welcomeLabel, continueLabel, emailAuthenticationStack, passwordAuthenticationStack, loginButtonsStack)
        emailAuthenticationStack.addArrangedSubviews(emailLabel, emailTextField)
        passwordAuthenticationStack.addArrangedSubviews(passwordLabel, passwordTextField)
        loginButtonsStack.addArrangedSubviews(loginButton, separatorView, facebookButton, googleButton, appleButton, emptyView)
    }

    override func setTargets() {
        loginButton.addTarget(self, action: #selector(loginButtonTap), for: .touchUpInside)
        facebookButton.addTarget(self, action: #selector(facebookButtonTap), for: .touchUpInside)
        googleButton.addTarget(self, action: #selector(googleButtonTap), for: .touchUpInside)
        appleButton.addTarget(self, action: #selector(appleButtonTap), for: .touchUpInside)
    }

    override func layoutConstraints() {
        NSLayoutConstraint.activate([
            appLogoImageView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            appLogoImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            appLogoImageView.heightAnchor.constraint(equalToConstant: 120),
            appLogoImageView.widthAnchor.constraint(equalToConstant: 160),

            welcomeLabel.topAnchor.constraint(equalTo: appLogoImageView.bottomAnchor, constant: 30),
            welcomeLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            welcomeLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            welcomeLabel.heightAnchor.constraint(equalToConstant: 25),

            continueLabel.topAnchor.constraint(equalTo: welcomeLabel.bottomAnchor),
            continueLabel.leadingAnchor.constraint(equalTo: welcomeLabel.leadingAnchor),
            continueLabel.trailingAnchor.constraint(equalTo: welcomeLabel.trailingAnchor),
            continueLabel.heightAnchor.constraint(equalToConstant: 20),

            emailAuthenticationStack.topAnchor.constraint(equalTo: continueLabel.bottomAnchor, constant: 40),
            emailAuthenticationStack.leadingAnchor.constraint(equalTo: welcomeLabel.leadingAnchor),
            emailAuthenticationStack.trailingAnchor.constraint(equalTo: welcomeLabel.trailingAnchor),
            emailAuthenticationStack.heightAnchor.constraint(equalToConstant: 100),

            passwordAuthenticationStack.topAnchor.constraint(equalTo: emailAuthenticationStack.bottomAnchor, constant: 20),
            passwordAuthenticationStack.leadingAnchor.constraint(equalTo: welcomeLabel.leadingAnchor),
            passwordAuthenticationStack.trailingAnchor.constraint(equalTo: welcomeLabel.trailingAnchor),
            passwordAuthenticationStack.heightAnchor.constraint(equalToConstant: 100),

            loginButtonsStack.topAnchor.constraint(equalTo: passwordAuthenticationStack.bottomAnchor, constant: 30),
            loginButtonsStack.leadingAnchor.constraint(equalTo: welcomeLabel.leadingAnchor),
            loginButtonsStack.trailingAnchor.constraint(equalTo: welcomeLabel.trailingAnchor),
            loginButtonsStack.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -30),

            emailLabel.heightAnchor.constraint(equalToConstant: 30),
            emailTextField.heightAnchor.constraint(equalToConstant: 30),
            passwordLabel.heightAnchor.constraint(equalToConstant: 30),
            passwordTextField.heightAnchor.constraint(equalToConstant: 30),
            loginButton.heightAnchor.constraint(equalToConstant: 50),
            separatorView.heightAnchor.constraint(equalToConstant: 40),
            facebookButton.heightAnchor.constraint(equalToConstant: 50),
            googleButton.heightAnchor.constraint(equalToConstant: 50),
            appleButton.heightAnchor.constraint(equalToConstant: 50),
        ])
    }

    @objc
    private func loginButtonTap() {

    }

    @objc
    private func facebookButtonTap() {

    }

    @objc
    private func googleButtonTap() {

    }

    @objc
    private func appleButtonTap() {

    }

}
