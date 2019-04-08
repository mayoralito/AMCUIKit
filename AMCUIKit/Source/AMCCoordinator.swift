//
//  AMCCoordinator.swift
//  AMCUIKit
//
//  Created by Adrian Mayoral on 4/7/19.
//  Copyright © 2019 AMCEngine85. All rights reserved.
//

import UIKit

public protocol AMCCoordinator {
    var childCoordinators: [AMCCoordinator] { get set }
    var navigationController: UINavigationController { get set }

    func start()
}
