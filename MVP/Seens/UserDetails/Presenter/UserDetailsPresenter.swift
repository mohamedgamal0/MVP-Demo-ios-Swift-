//
//  UserDetailsPresenter.swift
//  MVP
//
//  Created by mohamed gamal on 3/19/20.
//  Copyright © 2020 mohamed gamal. All rights reserved.
//

import Foundation

protocol UserDetailsView: class {
    var presenter: UserDetailsPresenter? {get set}
    func displayImage(image: String)
    func displayID(userId: Int)
    func displayName(name: String)
    func displayEmail(email: String)
}
class UserDetailsPresenter {
    private weak var view: UserDetailsView?
    private var user: DataModel
    init(view: UserDetailsView?, user: DataModel) {
        self.view = view
        self.user = user
    }
    func viewDidAttach() {
        view?.displayEmail(email: user.email ?? "")
        view?.displayID(userId: user.id)
        view?.displayName(name: "\(user.firstName ?? "") \(user.lastName ?? "")")
        view?.displayImage(image: user.avatar ?? "")
    }
}
