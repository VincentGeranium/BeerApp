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
        searchBeerImageView.backgroundColor = .systemOrange
//        searchBeerImageView.contentMode = .scaleAspectFit
        searchBeerImageView.image = .init(imageLiteralResourceName: "keg.png")
        return searchBeerImageView
    }()
    
    private let searchBeerIdLabel: UILabel = {
        var searchBeerIdLabel: UILabel = UILabel()
        searchBeerIdLabel.backgroundColor = .systemPink
        searchBeerIdLabel.textAlignment = .center
        searchBeerIdLabel.textColor = UIColor.brown
        searchBeerIdLabel.text = "1"
        return searchBeerIdLabel
    }()
    
    private let searchBeerNameLabel: UILabel = {
        var searchBeerNameLabel: UILabel = UILabel()
        searchBeerNameLabel.backgroundColor = .systemPurple
        searchBeerNameLabel.textAlignment = .center
        searchBeerNameLabel.font = UIFont.boldSystemFont(ofSize: 20)
        searchBeerNameLabel.text = "Buzz"
        return searchBeerNameLabel
    }()
    
    private let searchBeerDescriptionLabel: UILabel = {
        var searchBeerDescriptionLabel: UILabel = UILabel()
        searchBeerDescriptionLabel.backgroundColor = .systemBlue
        searchBeerDescriptionLabel.textAlignment = .center
        searchBeerDescriptionLabel.lineBreakMode = .byWordWrapping
        searchBeerDescriptionLabel.numberOfLines = 0
        searchBeerDescriptionLabel.textColor = UIColor.systemGray
        searchBeerDescriptionLabel.text = """
        I'm on my second guess Or maybe my second best
        What do I have to do?
        To know that I'm getting through
        I don't have much to say Just hoping you'd come my way What do
        I have to do? To come and get close to you Come get close to you Baby
        I won't slow down and
        I won't say when Tell me why
        I be comin' round again
        I'm ready to go again Baby
        I won't slow down and
        I won't say no Just one look and
        I think it starts to show
        I think that I already know
        """
        return searchBeerDescriptionLabel
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        setUpSearchBeerImageView()
        setUpSearchBeerIdLabel()
        setUpSearchBeerNameLabel()
        setUpSearchBeerDescriptionLabel()
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
    
    func guide() -> UILayoutGuide {
        let guide  = Guide(cell: self).safeAreaGuide
        return guide
    }
    
    private func setUpSearchBeerImageView() {
        searchBeerImageView.translatesAutoresizingMaskIntoConstraints = false
        
        contentView.addSubview(searchBeerImageView)
        
        NSLayoutConstraint.activate([
            searchBeerImageView.topAnchor.constraint(equalTo: guide().topAnchor, constant: 20),
            searchBeerImageView.centerXAnchor.constraint(equalTo: guide().centerXAnchor),
            searchBeerImageView.widthAnchor.constraint(equalTo: guide().widthAnchor, multiplier: 0.3),
            searchBeerImageView.bottomAnchor.constraint(equalTo: guide().bottomAnchor, constant: -350),
        ])
    }
    
    private func setUpSearchBeerIdLabel() {
        searchBeerIdLabel.translatesAutoresizingMaskIntoConstraints = false
        
        contentView.addSubview(searchBeerIdLabel)
        
        NSLayoutConstraint.activate([
            searchBeerIdLabel.topAnchor.constraint(equalTo: searchBeerImageView.bottomAnchor, constant: 20),
            searchBeerIdLabel.leadingAnchor.constraint(equalTo: guide().leadingAnchor),
            searchBeerIdLabel.trailingAnchor.constraint(equalTo: guide().trailingAnchor),
            searchBeerIdLabel.heightAnchor.constraint(equalToConstant: 20),
        ])
    }
    
    private func setUpSearchBeerNameLabel() {
        
        searchBeerNameLabel.translatesAutoresizingMaskIntoConstraints = false
        
        contentView.addSubview(searchBeerNameLabel)
        
        NSLayoutConstraint.activate([
            searchBeerNameLabel.topAnchor.constraint(equalTo: searchBeerIdLabel.bottomAnchor, constant: 20),
            searchBeerNameLabel.leadingAnchor.constraint(equalTo: guide().leadingAnchor),
            searchBeerNameLabel.trailingAnchor.constraint(equalTo: guide().trailingAnchor),
            searchBeerNameLabel.heightAnchor.constraint(equalToConstant: 40)
        ])
    }
    
    private func setUpSearchBeerDescriptionLabel() {
        searchBeerDescriptionLabel.translatesAutoresizingMaskIntoConstraints = false
        
        contentView.addSubview(searchBeerDescriptionLabel)
        
        NSLayoutConstraint.activate([
            searchBeerDescriptionLabel.topAnchor.constraint(equalTo: searchBeerNameLabel.bottomAnchor, constant: 20),
            searchBeerDescriptionLabel.leadingAnchor.constraint(equalTo: guide().leadingAnchor),
            searchBeerDescriptionLabel.trailingAnchor.constraint(equalTo: guide().trailingAnchor),
            searchBeerDescriptionLabel.bottomAnchor.constraint(equalTo: guide().bottomAnchor, constant: -40),
        ])
        
    }
    
    

}
