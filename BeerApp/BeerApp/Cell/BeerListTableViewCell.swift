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
        beerImageView.image = .init(imageLiteralResourceName: "keg.png")
        beerImageView.backgroundColor = .systemOrange
        return beerImageView
    }()
    
    private let beerIdLabel: UILabel = {
        var beerIdLabel: UILabel = UILabel()
        beerIdLabel.backgroundColor = .systemPink
        beerIdLabel.textAlignment = .left
        beerIdLabel.text = "1"
        return beerIdLabel
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        setUpBeerImageView()
        setUpBeerIdLabel()
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
        let guide: Guide = Guide(view: self)
        return guide.guide()
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
    
}
