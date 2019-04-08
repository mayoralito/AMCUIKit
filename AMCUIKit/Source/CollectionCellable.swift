//
//  CollectionCellable.swift
//  AMCUIKit
//
//  Created by Adrian Mayoral on 4/7/19.
//  Copyright © 2019 AMCEngine85. All rights reserved.
//

import UIKit

public protocol CollectionCellable {
    static func registerCell(collectionView: UICollectionView)
    func dequeueReusableCell(collectionView: UICollectionView, indexPath: IndexPath) -> UICollectionViewCell
    func cellSelected()
}

