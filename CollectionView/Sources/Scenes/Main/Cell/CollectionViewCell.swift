//
//  CollectionViewCell.swift
//  CollectionView
//
//  Created by Danil Goncharov on 15.11.2021.
//

import UIKit

final class CollectionViewCell: UICollectionViewCell {
    
    public func configurationContentOfCell(with model: AlbumCell) {
        imageView.image = UIImage(named: model.image)
        nameLabel.text = model.imageTitle
        countLabel.text = String(model.imageCount)
    }
        
    let imageView: UIImageView = {
        let imageView = UIImageView()
        imageView.backgroundColor = .white
        return imageView
    }()
    
    let nameLabel: UILabel = {
        let label = UILabel()
        label.textAlignment = .left
        return label
    }()
    
    let countLabel: UILabel = {
        let label = UILabel()
        label.textColor = .gray
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: .zero)
        setupView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) - fatalError")
    }
    
    private func setupView() {
        contentView.addSubview(imageView)
        contentView.addSubview(nameLabel)
        contentView.addSubview(countLabel)
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        nameLabel.frame = CGRect(x: 5, y: contentView.frame.size.height-50, width: contentView.frame.size.width-10, height: 50)
        
        imageView.frame = CGRect(x: 5, y: 0, width: contentView.frame.size.width-10, height: contentView.frame.size.height-50)
        
        countLabel.frame = CGRect(x: 5, y: contentView.frame.size.height-50, width: contentView.frame.size.width-10, height: 90)
    }
}
