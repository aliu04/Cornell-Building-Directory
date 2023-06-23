//
//  FilterCollectionViewCell.swift
//  al844_p5
//
//  Created by Ashley Liu on 2022-10-30.
//

import UIKit

class FilterCollectionViewCell: UICollectionViewCell {
    
    var filterButton = UILabel()
    let midPurple = UIColor(red: 0.78, green: 0.49, blue: 1.0, alpha: 1.0)
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        contentView.layer.cornerRadius = 8
        contentView.clipsToBounds = true
        
        //filterButton.setTitleColor(anotherPurple, for: .normal)
        //filterButton.textColor = anotherPurple
        //filterButton.backgroundColor = UIColor(red: 0.949, green: 0.922, blue: 0.984, alpha: 1.0)
        filterButton.translatesAutoresizingMaskIntoConstraints = false
        contentView.addSubview(filterButton)

        setupConstraints()

    }
    
    func configure(filter: UILabel) {
        //filterButton.setTitle(button.title(for: .normal), for: .normal)
        filterButton.text = filter.text
        filterButton.textColor = filter.textColor
        filterButton.backgroundColor = filter.backgroundColor
    }
    func setupConstraints() {
        NSLayoutConstraint.activate([
            filterButton.topAnchor.constraint(equalTo: contentView.topAnchor),
            filterButton.bottomAnchor.constraint(equalTo: contentView.bottomAnchor),
            filterButton.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            filterButton.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
        ])
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
