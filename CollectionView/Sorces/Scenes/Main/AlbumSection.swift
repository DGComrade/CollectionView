//
//  AlbumSection.swift
//  CollectionView
//
//  Created by Danil Goncharov on 16.11.2021.
//

import UIKit

extension AlbumViewController {
    
    func createFirstSection() -> UICollectionViewLayout {

                let itemSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(0.95),
                                                      heightDimension: .fractionalWidth(0.95))
                let item = NSCollectionLayoutItem(layoutSize: itemSize)
                item.contentInsets = NSDirectionalEdgeInsets(top: 5, leading: 5, bottom: 5, trailing: 5)
                let groupSize = NSCollectionLayoutSize(widthDimension: .absolute(view.frame.size.width * 0.5), heightDimension: .absolute(view.frame.size.width * 1.25))
                let group = NSCollectionLayoutGroup.vertical(layoutSize: groupSize, subitem: item, count: 2)
                group.contentInsets = NSDirectionalEdgeInsets(top: 5, leading: 5, bottom: 5, trailing: 5)
        
                let section = NSCollectionLayoutSection(group: group)
                section.contentInsets = NSDirectionalEdgeInsets(top: 0, leading: 5, bottom: 0, trailing: 5)
                section.orthogonalScrollingBehavior = .groupPaging
                
                let headerSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1), heightDimension: .absolute(35))
                let sectionHeader = NSCollectionLayoutBoundarySupplementaryItem(layoutSize: headerSize, elementKind: UICollectionView.elementKindSectionHeader, alignment: .top)
                sectionHeader.contentInsets = NSDirectionalEdgeInsets(top: -10, leading: 0, bottom: 0, trailing: 0)
                sectionHeader.pinToVisibleBounds = false
                sectionHeader.zIndex = Int.max
                section.boundarySupplementaryItems = [sectionHeader]
                let layout = UICollectionViewCompositionalLayout(section: section)
                return layout
            }
}


