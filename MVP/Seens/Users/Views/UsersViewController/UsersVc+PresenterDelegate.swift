//
//  UsersVc+Presenter.swift
//  MVP
//
//  Created by mohamed gamal on 3/18/20.
//  Copyright © 2020 mohamed gamal. All rights reserved.
//

import Foundation
import UIKit

extension UsersViewController: UsersView {
    func showIndicator() {
        showActivityIndicator()
    }
    func hideIndicator() {
        hideActivityIndicator()
    }
    func fetchData() {
        tableView.reloadData()
    }
    func showError(error: String) {
        print(error)
    }
    func navigateTouserDetailsScreen(user: DataModel) {
        navigationController?.pushViewController(UIViewController(), animated: true)
     }
}
