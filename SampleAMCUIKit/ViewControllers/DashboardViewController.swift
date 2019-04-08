//
//  DashboardViewController.swift
//  SampleAMCUIKit
//
//  Created by Adrian Mayoral on 4/6/19.
//  Copyright © 2019 AMCEngine85. All rights reserved.
//

import UIKit

class DashboardViewController: UIViewController {

    weak var coordinator: MainCoordinator?
    
    lazy var rightBarButtonItem: UIBarButtonItem = {
        let barButtonItem = UIBarButtonItem(title: "Logout", style: .plain, target: self, action: #selector(onButtonPressed(_:)))
        barButtonItem.tintColor = UIColor.blue
        return barButtonItem
    }()

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        view.backgroundColor = UIColor.green

        self.title = "Main"

        self.navigationItem.rightBarButtonItem = rightBarButtonItem
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @objc
    private func onButtonPressed(_ sender: Any) {
        coordinator?.displayInitialScreen(transitionType: .reveal)
    }

}

