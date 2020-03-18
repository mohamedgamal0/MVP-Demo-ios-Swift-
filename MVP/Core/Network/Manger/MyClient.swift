//
//  MyClient.swift
//  MVP
//
//  Created by mohamed gamal on 3/17/20.
//  Copyright © 2020 mohamed gamal. All rights reserved.
//

import Foundation

class MyClient: APIClient {
    let session: URLSession
     init(configuration: URLSessionConfiguration) {
         self.session = URLSession(configuration: configuration)
     }
     convenience init() {
         self.init(configuration: .default)
     }
     //in the signature of the function in the success case we define the Class type thats is the generic one in the API
     func getFeed(from userFeedType: UserFeed, completion: @escaping (Result<UsersFeedResult?, APIError>) -> Void) {
         let endpoint = userFeedType
         let request = endpoint.request
         fetch(with: request, decode: { json -> UsersFeedResult? in
             guard let userFeedResult = json as? UsersFeedResult else { return  nil }
             return userFeedResult
         }, completion: completion)
     }
 }
