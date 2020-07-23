//
//  Beers.swift
//  BeerApp
//
//  Created by 김광준 on 2020/07/23.
//  Copyright © 2020 VincentGeranium. All rights reserved.
//

import Foundation

class Beers {
    let id: String
    let name: String
    let description: String
    let imageURL: String
    
    init(id: String, name: String, description: String, imageURL: String) {
        self.id = id
        self.name = name
        self.description = description
        self.imageURL = imageURL
    }
}
