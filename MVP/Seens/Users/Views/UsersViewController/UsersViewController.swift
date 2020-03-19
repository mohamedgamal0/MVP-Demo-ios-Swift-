//
//  MainViewController.swift
//  MVP
//
//  Created by mohamed gamal on 3/17/20.
//  Copyright © 2020 mohamed gamal. All rights reserved.
//

import UIKit

class UsersViewController: UIViewController {
    @IBOutlet weak var tableView: UITableView!
    let cellId = "UsersCell"
    var presenter: UsersVcPresenter?
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setupView()
        //presenter = UsersVcPresenter(view: self)
        presenter?.didAttach()
    }
}
