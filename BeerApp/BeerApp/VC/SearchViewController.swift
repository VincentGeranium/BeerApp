//
//  SearchViewController.swift
//  BeerApp
//
//  Created by 김광준 on 2020/06/30.
//  Copyright © 2020 VincentGeranium. All rights reserved.
//

import UIKit

class SearchViewController: UIViewController {
    
    private let searchController: UISearchController = {
        var searchController: UISearchController = UISearchController(searchResultsController: nil)
        
        return searchController
    }()
    

    private let searchTableView: UITableView = {
        var searchTableView: UITableView = UITableView()
        searchTableView.register(BeerSearchTableViewCell.self, forCellReuseIdentifier: BeerSearchTableViewCell.reuseIdentifier)
        return searchTableView
    }()
    
    var searchResult: [Beers] = []
    var beerData: [Beers] = []
    let queryService = QueryService()
//    var filteredData

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.searchTableView.delegate = self
        self.searchTableView.dataSource = self
        self.searchTableView.separatorStyle = .none
        self.searchTableView.rowHeight = 680
//        self.searchTableView.rowHeight = UITableView.automaticDimension
        self.view.backgroundColor = .systemOrange
        self.title = "ID 검색"
        
        
        self.navigationItem.searchController = searchController
        
        setUpSearchTableView()
        
    }
    
    private func setUpSearchTableView() {
        let guide = self.view.safeAreaLayoutGuide
        
        searchTableView.translatesAutoresizingMaskIntoConstraints = false
        
        self.view.addSubview(searchTableView)
        
        NSLayoutConstraint.activate([
            searchTableView.topAnchor.constraint(equalTo: guide.topAnchor),
            searchTableView.leadingAnchor.constraint(equalTo: guide.leadingAnchor),
            searchTableView.trailingAnchor.constraint(equalTo: guide.trailingAnchor),
            searchTableView.bottomAnchor.constraint(equalTo: guide.bottomAnchor),
        ])
    }

    

}

extension SearchViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return searchResult.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: BeerSearchTableViewCell.reuseIdentifier, for: indexPath) as? BeerSearchTableViewCell else {
            return UITableViewCell()
        }
        
        return cell
    }
}

extension SearchViewController: UISearchControllerDelegate, UISearchResultsUpdating {
    func updateSearchResults(for searchController: UISearchController) {
        print("a")
    }
    
    
}
