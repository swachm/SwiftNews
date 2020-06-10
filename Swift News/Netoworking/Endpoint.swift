//
//  Endpoint.swift
//  Swift News
//
//  Created by Manmeet Swach on 2020-06-09.
//

import Foundation

protocol Endpoint {
    var baseUrl: String { get }
    var path: String { get }
    var urlParameters: [URLQueryItem] { get }
}

extension Endpoint{
    var urlComponent: URLComponents {
        let urlComponent = URLComponents(string: baseUrl)
        return urlComponent!
    }
    
    var request: URLRequest{
        return URLRequest(url: urlComponent.url!)
    }
}

enum NewsApiEndpoint: Endpoint{
    
    case news
    
    var baseUrl: String {
        return "https://www.reddit.com/r/swift/.json"
    }
    
    var path: String{
        return ""
    }
    
    var urlParameters: [URLQueryItem]{
        switch self {
        case .news:
            return []
        }
    }
}
