//
//  BeerSearchTableViewCell.swift
//  BeerApp
//
//  Created by 김광준 on 2020/07/07.
//  Copyright © 2020 VincentGeranium. All rights reserved.
//

import UIKit

class BeerSearchTableViewCell: UITableViewCell {
    
    static let reuseIdentifier: String = "BeerSearchTableViewCell"
    
    private let searchBeerImageView: UIImageView = {
        var searchBeerImageView: UIImageView = UIImageView()
        searchBeerImageView.backgroundColor = .systemPink
        searchBeerImageView.image = .init(imageLiteralResourceName: "keg.png")
        return searchBeerImageView
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        setUpSearchBeerImageView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    private func setUpSearchBeerImageView() {
        let guide = self.contentView.safeAreaLayoutGuide
        
        searchBeerImageView.translatesAutoresizingMaskIntoConstraints = false
        
        contentView.addSubview(searchBeerImageView)
        
        NSLayoutConstraint.activate([
            searchBeerImageView.topAnchor.constraint(equalTo: guide.topAnchor, constant: 20),
            searchBeerImageView.centerXAnchor.constraint(equalTo: guide.centerXAnchor),
            searchBeerImageView.widthAnchor.constraint(equalTo: guide.widthAnchor, multiplier: 0.3),
            searchBeerImageView.bottomAnchor.constraint(equalTo: guide.bottomAnchor)
            
        ])
    }

}
