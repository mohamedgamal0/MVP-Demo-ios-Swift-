//
//  SceneDelegate.swift
//  MVP
//
//  Created by mohamed gamal on 3/17/20.
//  Copyright © 2020 mohamed gamal. All rights reserved.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let _ = (scene as? UIWindowScene) else { return }
        window?.rootViewController = UsersRouterVc.createUserVc()
    }

}
