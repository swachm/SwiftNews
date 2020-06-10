//
//  RedditAPIClient.swift
//  Swift News
//
//  Created by Manmeet Swach on 2020-06-09.
//

import Foundation

class FetchNewsClient: APIClient {
    func fetch(with endpoint: NewsApiEndpoint, completion: @escaping (Either<SwiftNewsData>) -> Void){
        let request = endpoint.request
        get(with: request, completion: completion)
    }
}
