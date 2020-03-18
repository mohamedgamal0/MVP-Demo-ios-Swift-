//
//  Endpoint.swift
//  MVP
//
//  Created by mohamed gamal on 3/17/20.
//  Copyright © 2020 mohamed gamal. All rights reserved.
//
import Foundation

protocol Endpoint {
    var base: String { get }
    var path: String { get }
}

extension Endpoint {
    var apiKey: String {
        return "api_key="
    }
    var urlComponents: URLComponents {
        var components = URLComponents(string: base)!
        components.path = path
        //components.query = apiKey
        return components
    }
    var request: URLRequest {
        let url = urlComponents.url!
        return URLRequest(url: url)
    }
}

enum UserFeed {
    case currentUsers
    case topRated
}

extension UserFeed: Endpoint {
    var base: String {
        return "https://reqres.in"
    }
    var path: String {
        switch self {
        case .currentUsers: return "/api/users"
        case .topRated: return ""
        }
    }
}
