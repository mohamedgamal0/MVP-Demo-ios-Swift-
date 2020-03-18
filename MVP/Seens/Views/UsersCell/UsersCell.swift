//
//  UsersCell.swift
//  MVP
//
//  Created by mohamed gamal on 3/18/20.
//  Copyright © 2020 mohamed gamal. All rights reserved.
//

import UIKit

class UsersCell: UITableViewCell, UserCellView {
    @IBOutlet weak var userImage: UIImageView!
    @IBOutlet weak var idLbl: UILabel!
    @IBOutlet weak var nameLbl: UILabel!
    @IBOutlet weak var emailLbl: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        selectionStyle = .none
        self.userImage.makeCircular()
    }
    func displayImage(image: String) {
        let image = image
        userImage.contentMode = .scaleAspectFit
        let url = URL(string: image)
        userImage.downloadImage(from: url!)
    }
    func displayID(userId: Int) {
        idLbl.text = "ID: \(userId)"
    }
    func displayName(name: String) {
        nameLbl.text = "Name: \(name)"
    }
    func displayEmail(email: String) {
        emailLbl.text = "Email: \(email)"
    }
}
