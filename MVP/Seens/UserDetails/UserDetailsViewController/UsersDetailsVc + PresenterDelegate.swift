//
//  UsersDetailsVc + PresenterDelegate.swift
//  MVP
//
//  Created by mohamed gamal on 3/19/20.
//  Copyright © 2020 mohamed gamal. All rights reserved.
//

import Foundation

extension UserDetailsVC: UserDetailsView {
    func displayImage(image: String) {
        let image = image
        imageView.contentMode = .scaleAspectFit
        let url = URL(string: image)
        imageView.downloadImage(from: url!)
    }
    func displayID(userId: Int) {
        id.text = "ID: \(userId)"
    }
    func displayName(name: String) {
        self.name.text = "Name: \(name)"
    }
    func displayEmail(email: String) {
        self.email.text = "Email: \(email)"
    }
}
