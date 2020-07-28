//
//  QueryService.swift
//  BeerApp
//
//  Created by 김광준 on 2020/07/23.
//  Copyright © 2020 VincentGeranium. All rights reserved.
//

import Foundation

class QueryService {
    
    typealias JSONDictionary = [String : Any]
    
    
    let defaultURLSession = URLSession(configuration: .default)
    var dataTask: URLSessionDataTask?
    
    var errorMessage = ""
    var beers: [Beers] = []
    
    typealias queryResult = ([Beers]?, String) -> ()
    func getSearchResult(searchId: String, completion: @escaping queryResult) {
        // 이미 데이터가 있을 경우 작업을 취소.
        dataTask?.cancel()
        /// if var 인 이유  urlComponents.query = "?ids=\(searchId)"
        /// 정확하게는 모르겠음. 아마 query로 인해 검색하면 계속해서 url이 바뀌기 때문인가??
        if var urlComponents = URLComponents(string: "https://api.punkapi.com/v2/beers") {
            urlComponents.query = "?ids=\(searchId)"
            
            guard let url = urlComponents.url else { return }
            
            dataTask = defaultURLSession.dataTask(with: url) { data, respones, error in
                defer { self.dataTask = nil }
                
                if let error = error {
                    self.errorMessage += "DataTask Error : " + error.localizedDescription + "/n"
                } else if let data = data, let respones = respones as? HTTPURLResponse, respones.statusCode == 200 {
                    
                }
            }
        }
    }
    
    fileprivate func updateSearchResult(_ data: Data) {
        var response: JSONDictionary?
        // 새로운 데이터 다운로드시 앱 안에 있던 모든 데이터 삭제 후 다시 받아옴.
        beers.removeAll()
        
        do {
//            response 
        }
    }
}
