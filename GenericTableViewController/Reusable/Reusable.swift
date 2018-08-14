//
//  Reusable.swift
//  AdvanceGenericsReusableUI
//
//  Created by Serhat Sezer on 10.08.2018.
//  Copyright © 2018 Serhat Sezer. All rights reserved.
//

import UIKit

protocol Reusable { }

extension Reusable where Self: UITableViewCell {
    static var reuseIdentifier: String {
        return String(describing: self)
    }
}

extension UITableViewCell: Reusable { }

extension UITableView {
    func register<T: UITableViewCell>(_ :T.Type) {
        register(T.self, forCellReuseIdentifier: T.reuseIdentifier)
    }
    
    func dequeueReusableCell<T: UITableViewCell>(forIndexPath indexPath: IndexPath) -> T {
        guard let cell = dequeueReusableCell(withIdentifier: T.reuseIdentifier, for: indexPath) as? T else {
            fatalError("Could not dequeue cell with identifier: \(T.reuseIdentifier)")
        }
        return cell
    }
}
