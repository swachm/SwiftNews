//
//  FetchReddit.swift
//  Swift News
//
//  Created by Manmeet Swach on 2020-06-09.
//

import Foundation


class FetchRedditViewModel {
    private let client: APIClient
    var news: SwiftNewsData!
    
    init(client: APIClient) {
        self.client = client
    }
    
    var isLoading: Bool = false {
        didSet{
            showLoading?()
        }
    }
    
    var showLoading: (() -> Void)?
    
    var reloadData: (() -> Void)?
    
    var showError: ((Error) -> Void)?
    
    func fetchSwiftNews(){
        if let client = client as? FetchNewsClient{
            self.isLoading = true
            let endpoint = NewsApiEndpoint.news
            client.fetch(with: endpoint) { (either) in
                switch either{
                case .success(let news):
                    self.news = news
                    self.isLoading = false
                    self.reloadData?()
                case .error(let error):
                    self.showError?(error)
                    self.isLoading = false
                }
            }
        }
    }
}
