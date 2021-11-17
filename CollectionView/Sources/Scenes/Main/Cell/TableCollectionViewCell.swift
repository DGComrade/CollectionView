//
//  TableViewCell.swift
//  CollectionView
//
//  Created by Danil Goncharov on 17.11.2021.
//

import UIKit

class TableCollectionViewCell: UICollectionViewCell {
    
    func configurationContentOfCell(with model: TableCell) {
        labelTitleCell.text = model.titleCell
        iconView.image = model.icon
        labelCount.text = String(model.imageCount)
        arrowImageView.image = UIImage(systemName: "chevron.right")
    }
    
    let iconContainer: UIView = {
        let view = UIView()
        
        return view
    }()

    let iconView: UIImageView = {
        let image = UIImageView()
        image.backgroundColor = .white
        image.tintColor = .systemBlue
        image.contentMode = .scaleAspectFit
        
        return image
    }()
    
    var arrowContainer: UIView = {
        let view = UIView()
        
        return view
    }()
    
    let arrowImageView: UIImageView = {
        var image = UIImageView()
        image.tintColor = .systemGray
        image.backgroundColor = .white
        image.contentMode = .scaleAspectFit
        
        return image
    }()
    
    let labelTitleCell: UILabel = {
        let label = UILabel()
        label.textColor = .systemBlue
        label.numberOfLines = 1
        
        return label
    }()
    
    let labelCount: UILabel = {
        let label = UILabel()
        label.textColor = .systemGray
        
        return label
    }()
    
    // MARK: - Lifecycle
    
    override init(frame: CGRect) {
        super.init(frame: .zero)
        setupHierarchy()
        setupLayouts()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupHierarchy() {
        contentView.addSubview(iconContainer)
        iconContainer.addSubview(iconView)
        
        contentView.addSubview(labelTitleCell)
        contentView.addSubview(arrowContainer)
        arrowContainer.addSubview(arrowImageView)
        contentView.addSubview(labelCount)
        
    }
    
    private func setupLayouts() {
        iconContainer.translatesAutoresizingMaskIntoConstraints = false
        iconContainer.centerYAnchor.constraint(equalTo: safeAreaLayoutGuide.centerYAnchor).isActive = true
        iconContainer.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: 8).isActive = true
        iconContainer.widthAnchor.constraint(equalTo: safeAreaLayoutGuide.heightAnchor).isActive = true
        iconContainer.heightAnchor.constraint(equalTo: safeAreaLayoutGuide.heightAnchor).isActive = true
        
        iconView.translatesAutoresizingMaskIntoConstraints = false
        iconView.centerYAnchor.constraint(equalTo: iconContainer.centerYAnchor).isActive = true
        iconView.widthAnchor.constraint(equalTo:iconContainer.widthAnchor, constant: -15).isActive = true
        iconView.heightAnchor.constraint(equalTo:iconContainer.heightAnchor, constant: -15).isActive = true
        
        labelTitleCell.translatesAutoresizingMaskIntoConstraints = false
        labelTitleCell.centerYAnchor.constraint(equalTo: safeAreaLayoutGuide.centerYAnchor).isActive = true
        labelTitleCell.leadingAnchor.constraint(equalTo: iconContainer.trailingAnchor).isActive = true
        labelTitleCell.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor).isActive = true
        
        arrowContainer.translatesAutoresizingMaskIntoConstraints = false
        arrowContainer.centerYAnchor.constraint(equalTo: safeAreaLayoutGuide.centerYAnchor).isActive = true
        arrowContainer.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor, constant: -8).isActive = true
        arrowContainer.widthAnchor.constraint(equalTo: safeAreaLayoutGuide.heightAnchor).isActive = true
        arrowContainer.heightAnchor.constraint(equalTo: safeAreaLayoutGuide.heightAnchor).isActive = true
        
        arrowImageView.translatesAutoresizingMaskIntoConstraints = false
        arrowImageView.centerYAnchor.constraint(equalTo: arrowContainer.centerYAnchor).isActive = true
        arrowImageView.trailingAnchor.constraint(equalTo: arrowContainer.trailingAnchor, constant: -8).isActive = true
        arrowImageView.widthAnchor.constraint(equalTo: arrowContainer.widthAnchor, constant: -24).isActive = true
        arrowImageView.heightAnchor.constraint(equalTo: arrowContainer.widthAnchor, constant: -24).isActive = true
        
        labelCount.translatesAutoresizingMaskIntoConstraints = false
        labelCount.centerYAnchor.constraint(equalTo: safeAreaLayoutGuide.centerYAnchor).isActive = true
        labelCount.trailingAnchor.constraint(equalTo: arrowImageView.leadingAnchor, constant: -5).isActive = true
    }
}
