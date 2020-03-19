//
//  UserDetailsRouter.swift
//  MVP
//
//  Created by mohamed gamal on 3/19/20.
//  Copyright © 2020 mohamed gamal. All rights reserved.
//

import UIKit

class UserDetailsVcRouter {
    class func createUserDetailsCiew(user: DataModel) -> UIViewController {
        let userDetailsVc = mainStoryboard.instantiateViewController(withIdentifier: "userDetailsViewController")
        if let userDetailsView = userDetailsVc as? UserDetailsView {
            let presenter = UserDetailsPresenter(view: userDetailsView, user: user)
            userDetailsView.presenter = presenter
        }
        return userDetailsVc
    }
    class var mainStoryboard: UIStoryboard {
        return UIStoryboard(name: "Main", bundle: Bundle.main)
    }
}
