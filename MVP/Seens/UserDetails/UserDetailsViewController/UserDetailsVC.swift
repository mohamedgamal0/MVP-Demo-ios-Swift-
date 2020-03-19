//
//  UserDetailsVC.swift
//  MVP
//
//  Created by mohamed gamal on 3/19/20.
//  Copyright © 2020 mohamed gamal. All rights reserved.
//

import UIKit

class UserDetailsVC: UIViewController {
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var id: UILabel!
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var email: UILabel!
    var presenter: UserDetailsPresenter?
    override func viewDidLoad() {
        super.viewDidLoad()
        presenter?.viewDidAttach()
        imageView.makeCircular()
    }
}
