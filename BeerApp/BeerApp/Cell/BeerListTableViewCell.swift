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
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        setUpBeerImageView()
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
    
    private func setUpBeerImageView() {
        let guide = self.contentView.safeAreaLayoutGuide
        
        beerImageView.translatesAutoresizingMaskIntoConstraints = false
        
        contentView.addSubview(beerImageView)
        
        NSLayoutConstraint.activate([
            beerImageView.topAnchor.constraint(equalTo: guide.topAnchor),
            beerImageView.leadingAnchor.constraint(equalTo: guide.leadingAnchor),
            beerImageView.bottomAnchor.constraint(equalTo: guide.bottomAnchor),
            beerImageView.widthAnchor.constraint(equalTo: guide.widthAnchor, multiplier: 0.3),
            // 나중에 API 데이터 받아와서 thumbnail 이미지 크기에 맞춰 유동적으로 변경.
//            beerImageView.heightAnchor.constraint(equalToConstant: 150),
        ])
    }

}
