//
//  Guide.swift
//  BeerApp
//
//  Created by 김광준 on 2020/07/06.
//  Copyright © 2020 VincentGeranium. All rights reserved.
//

import Foundation
import UIKit

//struct Guide {
//    let view: UITableViewCell
//    func guide() -> UILayoutGuide {
//        return view.contentView.safeAreaLayoutGuide
//    }
//}

struct Guide {
    var cell: UITableViewCell
    
    var safeAreaGuide: UILayoutGuide {
        get {
            return self.cell.safeAreaLayoutGuide
        }
    }
}
