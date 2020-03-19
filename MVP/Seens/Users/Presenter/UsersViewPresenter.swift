//
//  UsersViewPresenter.swift
//  MVP
//
//  Created by mohamed gamal on 3/18/20.
//  Copyright © 2020 mohamed gamal. All rights reserved.
//

import Foundation

protocol UsersView: class {
    var presenter: UsersVcPresenter? {get set}
    func showIndicator()
    func hideIndicator()
    func fetchData()
    func showError(error: String)
}

protocol UserCellView: class {
    func displayImage(image: String)
    func displayID(userId: Int)
    func displayName(name: String)
    func displayEmail(email: String)
}

class UsersVcPresenter {
    private weak var userView: UsersView?
    private let interactor: UserInteractor
    private let router: UsersRouterVc
    private var userArray = [DataModel]()
    init(view: UsersView?, interactor: UserInteractor, router: UsersRouterVc) {
        self.userView = view
        self.interactor = interactor
        self.router = router
    }
    func didAttach() {
        getUserData()
    }
    func getUserData() {
        userView?.showIndicator()
        interactor.getFeed(from: .currentUsers) { [weak self] result in
            guard let self = self else { return }
            self.userView?.hideIndicator()
            switch result {
            case .success(let userFeedResult):
                guard let userResults = userFeedResult else { return }
                self.userArray = userResults.data!
                self.userView?.fetchData()
            case .failure(let error):
                self.userView?.showError(error: error.localizedDescription)
            }
        }
    }
    func getUsersCount() -> Int {
        return userArray.count
    }
    func configureUserCell(cell: UserCellView, for index: Int) {
        let users = userArray[index]
        cell.displayImage(image: users.avatar ?? "")
        cell.displayID(userId: users.id)
        cell.displayName(name: "\(users.first_name ?? "") \(users.last_name ?? "")")
        cell.displayEmail(email: users.email ?? "")
    }
    func didselectRow(index: Int) {
        let user = userArray[index]
        router.navigateToUserDetailsScreen(from: userView, user: user)
    }
}
