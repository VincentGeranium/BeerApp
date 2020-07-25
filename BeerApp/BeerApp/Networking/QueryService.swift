//
//  QueryService.swift
//  BeerApp
//
//  Created by 김광준 on 2020/07/23.
//  Copyright © 2020 VincentGeranium. All rights reserved.
//

import Foundation

class QueryService {
    let defaultURLSession = URLSession(configuration: .default)
    var dataTask: URLSessionDataTask?
    
    
    typealias queryResult = ([Beers]?, String) -> ()
    func getSearchResult(searchId: String, completion: @escaping queryResult) {
        /// if var 인 이유  urlComponents.query = "?ids=\(searchId)"
        /// 정확하게는 모르겠음. 아마 query로 인해 검색하면 계속해서 url이 바뀌기 때문인가??
        if var urlComponents = URLComponents(string: "https://api.punkapi.com/v2/beers") {
            urlComponents.query = "?ids=\(searchId)"
            
            guard let url = urlComponents.url else { return }
        }
    }
}
