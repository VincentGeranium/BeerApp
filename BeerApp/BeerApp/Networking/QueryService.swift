//
//  QueryService.swift
//  BeerApp
//
//  Created by 김광준 on 2020/07/23.
//  Copyright © 2020 VincentGeranium. All rights reserved.
//

import Foundation

class QueryService {
    typealias queryResult = ([Beers]?, String) -> ()
    func getSearchResult(searchId: String, completion: @escaping queryResult) {
        
    }
}
