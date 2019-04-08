//
//  MainCoordinator.swift
//  SampleAMCUIKit
//
//  Created by Adrian Mayoral on 4/7/19.
//  Copyright © 2019 AMCEngine85. All rights reserved.
//

import AMCUIKit

class MainCoordinator: AMCCoordinator {
    var childCoordinators: [AMCCoordinator] = []

    var navigationController: UINavigationController

    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }

    func start() {
        displayInitialScreen()
    }

    func displayInitialScreen(transitionType type: CATransitionType = CATransitionType.fade) {
        let vc = ViewController()
        vc.coordinator = self
        navigationController.initRootViewController(vc: vc, transitionType: type, duration: 0.3)
    }

    func displayLogin() {
        let vc = LoginViewController()
        vc.coordinator = self
        navigationController.pushViewController(vc, animated: true)
    }

    func displayRegisterAccount() {
        let vc = RegisterViewController()
        vc.coordinator = self
        navigationController.pushViewController(vc, animated: true)

    }

    func displayDashboard(transitionType type: CATransitionType = CATransitionType.fade) {
        let vc = DashboardViewController()
        vc.coordinator = self
        navigationController.initRootViewController(vc: vc, transitionType: type, duration: 0.3)
    }
    
}
