//
//  TableCellable.swift
//  AMCUIKit
//
//  Created by Adrian Mayoral on 4/7/19.
//  Copyright © 2019 AMCEngine85. All rights reserved.
//

import UIKit

public protocol TableCellable {
    static func registerCell(tableView: UITableView)
    func dequeueCell(tableView: UITableView, indexPath: IndexPath) -> UITableViewCell
    func cellSelected()
}
