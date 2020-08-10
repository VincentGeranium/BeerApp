//
//  BeerListTableViewCell.swift
//  BeerApp
//
//  Created by 김광준 on 2020/07/03.
//  Copyright © 2020 VincentGeranium. All rights reserved.
//

import UIKit

class BeerListTableViewCell: UITableViewCell {
    
    static let reuseIdentifier: String = "BeerListTableViewCell"
    
    private let beerImageView: UIImageView = {
        var beerImageView: UIImageView = UIImageView()
//        beerImageView.image = .init(imageLiteralResourceName: "keg.png")
        beerImageView.backgroundColor = .systemOrange
        return beerImageView
    }()
    
    private let beerIdLabel: UILabel = {
        var beerIdLabel: UILabel = UILabel()
        beerIdLabel.backgroundColor = .systemPink
        beerIdLabel.textAlignment = .left
        beerIdLabel.textColor = UIColor.brown
//        beerIdLabel.text = "1"
        return beerIdLabel
    }()
    
    private let beerNameLabel: UILabel = {
        var beerNameLabel: UILabel = UILabel()
        beerNameLabel.backgroundColor = .systemPurple
        beerNameLabel.textAlignment = .left
        beerNameLabel.font = UIFont.boldSystemFont(ofSize: 20)
//        beerNameLabel.text = "Buzz"
        return beerNameLabel
    }()
    
    private let beerDescriptionLabel: UILabel = {
        var beerDescriptionLabel: UILabel = UILabel()
        beerDescriptionLabel.backgroundColor = .systemBlue
//        beerDescriptionLabel.textAlignment = .left
        beerDescriptionLabel.lineBreakMode = .byWordWrapping
        beerDescriptionLabel.numberOfLines = 0
        beerDescriptionLabel.textColor = UIColor.systemGray
//        beerDescriptionLabel.text = """
//        I'm on my second guess Or maybe my second best
//        What do I have to do?
//        To know that I'm getting through
//        I don't have much to say Just hoping you'd come my way What do
//        I have to do? To come and get close to you Come get close to you Baby
//        I won't slow down and
//        I won't say when Tell me why
//        I be comin' round again
//        I'm ready to go again Baby
//        I won't slow down and
//        I won't say no Just one look and
//        I think it starts to show
//        I think that I already know
//        """
        return beerDescriptionLabel
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        setUpBeerImageView()
        setUpBeerIdLabel()
        setUpBeerNameLabel()
        setUpBeerDescriptionLabel()
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
    
    
    private func setUpBeerImageView() {
        
        beerImageView.translatesAutoresizingMaskIntoConstraints = false
        
        contentView.addSubview(beerImageView)
        
        NSLayoutConstraint.activate([
            beerImageView.topAnchor.constraint(equalTo: guide().topAnchor, constant: 20),
            beerImageView.leadingAnchor.constraint(equalTo: guide().leadingAnchor, constant: 30),
            beerImageView.bottomAnchor.constraint(equalTo: guide().bottomAnchor, constant: -20),
            beerImageView.widthAnchor.constraint(equalTo: guide().widthAnchor, multiplier: 0.3),
        ])
    }
    
    private func setUpBeerIdLabel() {

        beerIdLabel.translatesAutoresizingMaskIntoConstraints = false

        contentView.addSubview(beerIdLabel)

        NSLayoutConstraint.activate([
            beerIdLabel.topAnchor.constraint(equalTo: guide().topAnchor, constant: 20),
            beerIdLabel.leadingAnchor.constraint(equalTo: beerImageView.trailingAnchor, constant: 30),
            beerIdLabel.trailingAnchor.constraint(equalTo: guide().trailingAnchor),
            beerIdLabel.heightAnchor.constraint(equalTo: guide().heightAnchor, multiplier: 0.2),
        ])
    }
    
    private func setUpBeerNameLabel() {
        
        beerNameLabel.translatesAutoresizingMaskIntoConstraints = false
        
        contentView.addSubview(beerNameLabel)
        
        NSLayoutConstraint.activate([
            beerNameLabel.topAnchor.constraint(equalTo: beerIdLabel.bottomAnchor),
            beerNameLabel.leadingAnchor.constraint(equalTo: beerImageView.trailingAnchor, constant: 30),
            beerNameLabel.trailingAnchor.constraint(equalTo: guide().trailingAnchor),
            beerNameLabel.heightAnchor.constraint(equalTo: guide().heightAnchor, multiplier: 0.2)
        ])
    }
    
    private func setUpBeerDescriptionLabel() {
        
        beerDescriptionLabel.translatesAutoresizingMaskIntoConstraints = false
        
        contentView.addSubview(beerDescriptionLabel)
        
        NSLayoutConstraint.activate([
            beerDescriptionLabel.topAnchor.constraint(equalTo: beerNameLabel.bottomAnchor),
            beerDescriptionLabel.leadingAnchor.constraint(equalTo: beerImageView.trailingAnchor, constant: 30),
            beerDescriptionLabel.trailingAnchor.constraint(equalTo: guide().trailingAnchor),
            beerDescriptionLabel.bottomAnchor.constraint(equalTo: guide().bottomAnchor, constant: -20),
        ])
    }
    
}
