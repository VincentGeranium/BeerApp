//
//  ListViewController.swift
//  BeerApp
//
//  Created by 김광준 on 2020/06/30.
//  Copyright © 2020 VincentGeranium. All rights reserved.
//

import UIKit

class ListViewController: UIViewController {
    
    private let BeerListTableView: UITableView = {
        var BeerListTableView: UITableView = UITableView()
        BeerListTableView.register(BeerListTableViewCell.self, forCellReuseIdentifier: BeerListTableViewCell.reuseIdentifier)
        return BeerListTableView
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        self.title = "목록"
        
        self.BeerListTableView.rowHeight = 200
        
        BeerListTableView.delegate = self
        BeerListTableView.dataSource = self
        
        setUpBeerListTableView()
    }
    
    private func setUpBeerListTableView() {
        let guide = self.view.safeAreaLayoutGuide
        
        self.view.addSubview(BeerListTableView)
        
        BeerListTableView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            BeerListTableView.topAnchor.constraint(equalTo: guide.topAnchor),
            BeerListTableView.leadingAnchor.constraint(equalTo: guide.leadingAnchor),
            BeerListTableView.trailingAnchor.constraint(equalTo: guide.trailingAnchor),
            BeerListTableView.bottomAnchor.constraint(equalTo: guide.bottomAnchor),
        ])
    }

}

extension ListViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: BeerListTableViewCell.reuseIdentifier, for: indexPath) as? BeerListTableViewCell else {
            return UITableViewCell()
        }
        return cell
    }
    
    
}
