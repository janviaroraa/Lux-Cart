//
//  SignupViewController.swift
//  LuxeCart
//
//  Created by Janvi Arora on 27/05/24.
//

import UIKit

class SignupViewController: LCBaseViewController {
    private var appLogoImageView = LCImageView(imageName: "AppLogo")

    private var signupLabel = LCLabel(text: "Sign Up!", boldFontSize: 20, textAlignment: .left)
    private var createAccountLabel = LCLabel(text: "Create a new account...", fontSize: 16, textAlignment: .left)

    private var usernameLabel = LCLabel(text: "Username", boldFontSize: 18, textAlignment: .left)
    private var emailLabel = LCLabel(text: "Email", boldFontSize: 18, textAlignment: .left)
    private var passwordLabel = LCLabel(text: "Password", boldFontSize: 18, textAlignment: .left)
    private var confirmPasswordLabel = LCLabel(text: "Confirm Password", boldFontSize: 18, textAlignment: .left)

    private var usernameTextField = LCTextField()
    private var emailTextField = LCTextField()
    private var passwordTextField = LCTextField()
    private var confirmPasswordTextField = LCTextField()

    private var signupButton = LCButton(title: "Create Account", backgroundColor: .systemBlue, titleColor: .white, cornerRadius: 25)

    private var usernameAuthenticationStack = LCStackView(spacing: 4)
    private var emailAuthenticationStack = LCStackView(spacing: 4)
    private var passwordAuthenticationStack = LCStackView(spacing: 4)
    private var confirmPasswordAuthenticationStack = LCStackView(spacing: 4)

    private var termsLabel = LCLabel(text: "By creating an account you agree to our terms and conditions", fontSize: 14, textColor: .lightGray)

    override func viewDidLoad() {
        super.viewDidLoad()
        termsLabel.numberOfLines = 0
    }

    override func addViews() {
        view.addSubviews(appLogoImageView, signupLabel, createAccountLabel, usernameAuthenticationStack, emailAuthenticationStack, passwordAuthenticationStack, confirmPasswordAuthenticationStack, termsLabel, signupButton)
        usernameAuthenticationStack.addArrangedSubviews(usernameLabel, usernameTextField)
        emailAuthenticationStack.addArrangedSubviews(emailLabel, emailTextField)
        passwordAuthenticationStack.addArrangedSubviews(passwordLabel, passwordTextField)
        confirmPasswordAuthenticationStack.addArrangedSubviews(confirmPasswordLabel, confirmPasswordTextField)
    }

    override func setTargets() {
        signupButton.addTarget(self, action: #selector(signupButtonTap), for: .touchUpInside)
    }

    override func layoutConstraints() {
        NSLayoutConstraint.activate([
            appLogoImageView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: -60),
            appLogoImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            appLogoImageView.heightAnchor.constraint(equalToConstant: 120),
            appLogoImageView.widthAnchor.constraint(equalToConstant: 160),

            signupLabel.topAnchor.constraint(equalTo: appLogoImageView.bottomAnchor, constant: 30),
            signupLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            signupLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            signupLabel.heightAnchor.constraint(equalToConstant: 25),

            createAccountLabel.topAnchor.constraint(equalTo: signupLabel.bottomAnchor),
            createAccountLabel.leadingAnchor.constraint(equalTo: signupLabel.leadingAnchor),
            createAccountLabel.trailingAnchor.constraint(equalTo: signupLabel.trailingAnchor),
            createAccountLabel.heightAnchor.constraint(equalToConstant: 20),

            usernameAuthenticationStack.topAnchor.constraint(equalTo: createAccountLabel.bottomAnchor, constant: 40),
            usernameAuthenticationStack.leadingAnchor.constraint(equalTo: signupLabel.leadingAnchor),
            usernameAuthenticationStack.trailingAnchor.constraint(equalTo: signupLabel.trailingAnchor),
            usernameAuthenticationStack.heightAnchor.constraint(equalToConstant: 100),

            emailAuthenticationStack.topAnchor.constraint(equalTo: usernameAuthenticationStack.bottomAnchor, constant: 20),
            emailAuthenticationStack.leadingAnchor.constraint(equalTo: signupLabel.leadingAnchor),
            emailAuthenticationStack.trailingAnchor.constraint(equalTo: signupLabel.trailingAnchor),
            emailAuthenticationStack.heightAnchor.constraint(equalToConstant: 100),

            passwordAuthenticationStack.topAnchor.constraint(equalTo: emailAuthenticationStack.bottomAnchor, constant: 20),
            passwordAuthenticationStack.leadingAnchor.constraint(equalTo: signupLabel.leadingAnchor),
            passwordAuthenticationStack.trailingAnchor.constraint(equalTo: signupLabel.trailingAnchor),
            passwordAuthenticationStack.heightAnchor.constraint(equalToConstant: 100),

            confirmPasswordAuthenticationStack.topAnchor.constraint(equalTo: passwordAuthenticationStack.bottomAnchor, constant: 20),
            confirmPasswordAuthenticationStack.leadingAnchor.constraint(equalTo: signupLabel.leadingAnchor),
            confirmPasswordAuthenticationStack.trailingAnchor.constraint(equalTo: signupLabel.trailingAnchor),
            confirmPasswordAuthenticationStack.heightAnchor.constraint(equalToConstant: 100),

            termsLabel.topAnchor.constraint(equalTo: confirmPasswordAuthenticationStack.bottomAnchor, constant: 20),
            termsLabel.leadingAnchor.constraint(equalTo: signupLabel.leadingAnchor),
            termsLabel.trailingAnchor.constraint(equalTo: signupLabel.trailingAnchor),
            termsLabel.heightAnchor.constraint(equalToConstant: 40),

            signupButton.topAnchor.constraint(equalTo: termsLabel.bottomAnchor, constant: 10),
            signupButton.leadingAnchor.constraint(equalTo: signupLabel.leadingAnchor),
            signupButton.trailingAnchor.constraint(equalTo: signupLabel.trailingAnchor),
            signupButton.heightAnchor.constraint(equalToConstant: 50),

            emailLabel.heightAnchor.constraint(equalToConstant: 30),
            emailTextField.heightAnchor.constraint(equalToConstant: 30),
            passwordLabel.heightAnchor.constraint(equalToConstant: 30),
            passwordTextField.heightAnchor.constraint(equalToConstant: 30),
        ])
    }

    @objc
    private func signupButtonTap() {

    }
}
