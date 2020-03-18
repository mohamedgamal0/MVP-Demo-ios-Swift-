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
    let id:Int
    let email: String?
    let first_name: String?
    let last_name: String?
    let avatar: String?
}


