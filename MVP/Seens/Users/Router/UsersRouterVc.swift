//
//  UsersRouterVc.swift
//  MVP
//
//  Created by mohamed gamal on 3/19/20.
//  Copyright © 2020 mohamed gamal. All rights reserved.
//

import UIKit
class UsersRouterVc {
    class func createUserVc() -> UIViewController {
        let navigationController = mainStoryboard.instantiateViewController(withIdentifier: "UiNavigationController")
        let userView = navigationController.children.first as? UsersView
        let interactor = UserInteractor()
        let router = UsersRouterVc()
        let presenter = UsersVcPresenter(view: userView, interactor: interactor, router: router)
        userView?.presenter = presenter
        return navigationController
    }
    class var mainStoryboard: UIStoryboard {
        return UIStoryboard(name: "Main", bundle: Bundle.main)
    }
    func navigateToUserDetailsScreen(from view: UsersView?, user: DataModel) {

        let userVcDetails = UserDetailsVcRouter.createUserDetailsCiew(user: user)
        if let viewController = view as? UIViewController {
            viewController.navigationController?.pushViewController(userVcDetails, animated: true)
        }
    }
}
