//
//  CollectionViewCell.swift
//  CollectionView
//
//  Created by Danil Goncharov on 15.11.2021.
//

import UIKit

final class CollectionViewCell: UICollectionViewCell {
    
    let imageAlbums: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "image1")
        return imageView
    }()
    
    let nameAlbums: UILabel = {
        let label = UILabel()
        label.text = "Недавние"
        return label
    }()
    
    let numberPhotos: UILabel = {
        let label = UILabel()
        label.text = "33"
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
        contentView.addSubview(imageAlbums)
        contentView.addSubview(nameAlbums)
        contentView.addSubview(numberPhotos)
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        nameAlbums.frame = CGRect(x: 5, y: contentView.frame.size.height-50, width: contentView.frame.size.width-10, height: 50)
        
        imageAlbums.frame = CGRect(x: 5, y: 0, width: contentView.frame.size.width-10, height: contentView.frame.size.height-50)
        
        numberPhotos.frame = CGRect(x: 5, y: contentView.frame.size.height-50, width: contentView.frame.size.width-10, height: 90)
    }
}
