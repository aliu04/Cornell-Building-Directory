//
//  BuildingCollectionViewCell.swift
//  al844_p5
//
//  Created by Ashley Liu on 2022-10-31.
//

import UIKit

class BuildingCollectionViewCell: UICollectionViewCell {
    
    var buildingsImageView = UIImageView()
    var locationLabel = UILabel()
    var typeLabel = UILabel()
    var nameLabel = UILabel()
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        contentView.layer.cornerRadius = 8
        contentView.clipsToBounds = true
        contentView.backgroundColor = UIColor(red: 0.651, green: 0.424, blue: 1.0, alpha: 1.0)

        buildingsImageView.contentMode = .scaleToFill
        buildingsImageView.translatesAutoresizingMaskIntoConstraints = false
        contentView.addSubview(buildingsImageView)
        
        nameLabel.textColor = .white
        nameLabel.font = .systemFont(ofSize: 15, weight: .bold)
        nameLabel.translatesAutoresizingMaskIntoConstraints = false
        contentView.addSubview(nameLabel)
        
        typeLabel.textColor = .white
        typeLabel.font = .systemFont(ofSize: 12, weight: .regular)
        typeLabel.translatesAutoresizingMaskIntoConstraints = false
        contentView.addSubview(typeLabel)
        
        locationLabel.textColor = .white
        locationLabel.font = .systemFont(ofSize: 12, weight: .regular)
        locationLabel.translatesAutoresizingMaskIntoConstraints = false
        contentView.addSubview(locationLabel)
        
        setupConstraints()
        
    }
    
    func setupConstraints() {
        
        NSLayoutConstraint.activate([
            buildingsImageView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 5),
            buildingsImageView.bottomAnchor.constraint(equalTo: contentView.centerYAnchor, constant: 10),
            buildingsImageView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 5),
            buildingsImageView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -5)
        ])
        
        NSLayoutConstraint.activate([
            nameLabel.topAnchor.constraint(equalTo: buildingsImageView.bottomAnchor, constant: 10),
            nameLabel.leadingAnchor.constraint(equalTo: buildingsImageView.leadingAnchor),
            nameLabel.trailingAnchor.constraint(equalTo: buildingsImageView.trailingAnchor)
        ])
        NSLayoutConstraint.activate([
            typeLabel.topAnchor.constraint(equalTo: nameLabel.bottomAnchor, constant: 5),
            typeLabel.leadingAnchor.constraint(equalTo: nameLabel.leadingAnchor),
            typeLabel.trailingAnchor.constraint(equalTo: nameLabel.trailingAnchor)
        ])
        
        NSLayoutConstraint.activate([
            locationLabel.topAnchor.constraint(equalTo: typeLabel.bottomAnchor, constant: 5),
            locationLabel.leadingAnchor.constraint(equalTo: typeLabel.leadingAnchor),
            locationLabel.trailingAnchor.constraint(equalTo: typeLabel.trailingAnchor)
        ])
    }
    
    func configure(building: Building) {
        buildingsImageView.image = UIImage(named: building.imageName)
        nameLabel.text = building.buildingName
        typeLabel.text = "Type: " + building.type
        locationLabel.text = "Location: " + building.location
    }
    
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
