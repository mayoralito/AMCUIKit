//
//  ViewController.swift
//  SampleAMCUIKit
//
//  Created by Adrian Mayoral on 4/6/19.
//  Copyright © 2019 AMCEngine85. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    weak var coordinator: MainCoordinator?

    lazy var loginButton: UIButton = {
        let button = UIButton(type: UIButton.ButtonType.roundedRect)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Login", for: UIControl.State.normal)
        button.tintColor = UIColor.white
        button.backgroundColor = UIColor.orange
        return button
    }()

    lazy var registerButton: UIButton = {
        let button = UIButton(type: UIButton.ButtonType.roundedRect)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Register", for: UIControl.State.normal)
        button.tintColor = UIColor.white
        button.backgroundColor = UIColor.orange
        return button
    }()

    init() {
        super.init(nibName: nil, bundle: nil)
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = UIColor.white
        addConfigureViews()
        registerTap(for: [loginButton, registerButton], forSelector: #selector(onButtonPressed(_:)))
    }

    private func addConfigureViews() {
        view.addSubview(loginButton)
        view.addSubview(registerButton)

        NSLayoutConstraint.activate([
            loginButton.topAnchor.constraint(equalTo: view.layoutMarginsGuide.topAnchor, constant: 50),
            loginButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 18),
            loginButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -18),
            loginButton.heightAnchor.constraint(equalToConstant: 45)
            ])

        NSLayoutConstraint.activate([
            registerButton.topAnchor.constraint(equalTo: loginButton.topAnchor, constant: 50),
            registerButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 18),
            registerButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -18),
            registerButton.heightAnchor.constraint(equalTo: loginButton.heightAnchor, constant: 0)
            ])
    }

    private func registerTap(for buttons:[UIButton], forSelector action: Selector) {
        for button in buttons {
            button.addTarget(self, action: action, for: UIControl.Event.touchUpInside)
        }
    }

    @objc func onButtonPressed(_ sender: UIButton) {
        if sender == loginButton {
            coordinator?.displayLogin()
        } else if sender == registerButton {
            coordinator?.displayRegisterAccount()
        }
    }

}

