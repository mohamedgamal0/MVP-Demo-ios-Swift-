//
//  Result.swift
//  MVP
//
//  Created by mohamed gamal on 3/17/20.
//  Copyright © 2020 mohamed gamal. All rights reserved.
//

import Foundation

enum Result<T, U> where U: Error {
    case success(T)
    case failure(U)
}
