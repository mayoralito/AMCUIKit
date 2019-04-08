//
//  LoginViewController.swift
//  SampleAMCUIKit
//
//  Created by Adrian Mayoral on 4/6/19.
//  Copyright © 2019 AMCEngine85. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    weak var coordinator: MainCoordinator?
    
    lazy var rightBarButtonItem: UIBarButtonItem = {
        let barButtonItem = UIBarButtonItem(title: "Let Me In!", style: .plain, target: self, action: #selector(onButtonPressed(_:)))
        barButtonItem.tintColor = UIColor.blue
        return barButtonItem
    }()

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        view.backgroundColor = UIColor.blue

        self.title = "Hi there!"

        self.navigationItem.rightBarButtonItem = rightBarButtonItem
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()

    }

    @objc
    private func onButtonPressed(_ sender: Any) {
        coordinator?.displayDashboard(transitionType: .fade)
    }

}
