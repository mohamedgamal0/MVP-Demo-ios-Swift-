//
//  Model.swift
//  MVP
//
//  Created by mohamed gamal on 3/17/20.
//  Copyright © 2020 mohamed gamal. All rights reserved.
//

import Foundation

struct UsersFeedResult: Decodable {
    let data: [DataModel]?
}

struct DataModel: Decodable {
    let id: Int
    let email: String?
    let firstName: String?
    let lastName: String?
    let avatar: String?
    private enum CodingKeys: String, CodingKey {
           case id, email, firstName = "first_name", lastName = "last_name", avatar
       }
}
