//
//  HeaderSettings.swift
//  CollectionView
//
//  Created by Danil Goncharov on 17.11.2021.
//

import UIKit

class AlbumHeader: UICollectionReusableView {
    
    public func configureBothHeaders(leftHeader: String, rightHeader: String) {
        backgroundColor = .white
        leftLabel.text = leftHeader
        rightLabel.text = rightHeader
        addSubview(leftLabel)
        addSubview(rightLabel)
    }

    public func configureLeftHeader(_ leftHeader: String) {
        backgroundColor = .white
        leftLabel.text = leftHeader
        rightLabel.text = ""
        addSubview(leftLabel)
        addSubview(rightLabel)
    }
    
    private var leftLabel: UILabel = {
        let label = UILabel()
        label.textColor = .black
        label.font = .boldSystemFont(ofSize: 20)
        label.textAlignment = .left
        
        return label
    }()

    private  var rightLabel: UILabel = {
        let label = UILabel()
        label.textColor = .systemBlue
        label.textAlignment = .right
        
        return label
    }()
    
    override func layoutSubviews() {
        super.layoutSubviews()

        leftLabel.translatesAutoresizingMaskIntoConstraints = false
        leftLabel.centerYAnchor.constraint(equalTo: safeAreaLayoutGuide.centerYAnchor).isActive = true
        leftLabel.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: 10).isActive = true
        
        rightLabel.translatesAutoresizingMaskIntoConstraints = false
        rightLabel.centerYAnchor.constraint(equalTo: safeAreaLayoutGuide.centerYAnchor).isActive = true
        rightLabel.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor, constant: -10).isActive = true
    }
}
