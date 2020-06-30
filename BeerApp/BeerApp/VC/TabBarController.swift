//
//  TabBarController.swift
//  BeerApp
//
//  Created by 김광준 on 2020/06/30.
//  Copyright © 2020 VincentGeranium. All rights reserved.
//

import UIKit

class TabBarController: UIViewController {
    
    let listNavi = UINavigationController(rootViewController: ListViewController())
    let searchNavi = UINavigationController(rootViewController: SearchViewController())
    
    private let tabbarController: UITabBarController = {
        var tabbarController: UITabBarController = UITabBarController()
        return tabbarController
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        setUpTabBar()
    }
    
    private func setUpTabBar() {
        self.view.addSubview(tabbarController.view)
        
        let listTabBarItem = UITabBarItem(title: "목록", image: UIImage.init(contentsOfFile: "list.png"), selectedImage: nil)
        let searchTabBarItem = UITabBarItem(title: "검색", image: UIImage.init(contentsOfFile: "search.png"), selectedImage: nil)
        
        listNavi.tabBarItem = listTabBarItem
        searchNavi.tabBarItem = searchTabBarItem
        
        tabbarController.viewControllers = [listNavi, searchNavi]
    }

}
