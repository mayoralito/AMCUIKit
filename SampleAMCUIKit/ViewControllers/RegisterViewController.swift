//
//  RegisterViewController.swift
//  SampleAMCUIKit
//
//  Created by Adrian Mayoral on 4/6/19.
//  Copyright © 2019 AMCEngine85. All rights reserved.
//

import UIKit

class RegisterViewController: UIViewController {

    weak var coordinator: MainCoordinator?
    
    lazy var rightBarButtonItem: UIBarButtonItem = {
        let barButtonItem = UIBarButtonItem(title: "Want it!", style: .plain, target: self, action: #selector(onButtonPressed(_:)))
        barButtonItem.tintColor = UIColor.blue
        return barButtonItem
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = UIColor.red
        self.title = "Register"
        self.navigationItem.rightBarButtonItem = rightBarButtonItem
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @objc
    private func onButtonPressed(_ sender: Any) {
        coordinator?.displayDashboard(transitionType: .fade)
    }
}
