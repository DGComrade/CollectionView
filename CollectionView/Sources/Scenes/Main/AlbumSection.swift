//
//  AlbumSection.swift
//  CollectionView
//
//  Created by Danil Goncharov on 16.11.2021.
//

import UIKit

extension AlbumViewController {
    
    //MARK: - First section
    
    func createFirstSection() -> NSCollectionLayoutSection {
                let itemSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(0.95),
                                                      heightDimension: .fractionalWidth(0.95))
                let item = NSCollectionLayoutItem(layoutSize: itemSize)
                item.contentInsets = NSDirectionalEdgeInsets(top: 5, leading: 5, bottom: 5, trailing: 5)
                let groupSize = NSCollectionLayoutSize(widthDimension: .absolute(view.frame.size.width * 0.55), heightDimension: .absolute(view.frame.size.width * 1.20))
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
                return section
            }
    
    //MARK: - Second section
    
    func createSecondSection() -> NSCollectionLayoutSection {
        
            let itemSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1),
                                                  heightDimension: .fractionalWidth(1))
            let item = NSCollectionLayoutItem(layoutSize: itemSize)
            item.contentInsets = NSDirectionalEdgeInsets(top: 5, leading: 5, bottom: 5, trailing: 5)
        let groupSize = NSCollectionLayoutSize(widthDimension: .absolute(view.frame.size.width * 0.53),
                                                   heightDimension: .absolute(view.frame.size.width * 0.63))
            let group = NSCollectionLayoutGroup.vertical(layoutSize: groupSize, subitem: item, count: 1)
            group.contentInsets = NSDirectionalEdgeInsets(top: 5, leading: 5, bottom: 5, trailing: 5)

            let section = NSCollectionLayoutSection(group: group)
        section.contentInsets = NSDirectionalEdgeInsets(top: 0, leading: 5, bottom: 0, trailing: 15)
            section.orthogonalScrollingBehavior = .groupPaging

            let headerSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1),
                                                    heightDimension: .absolute(25))
            let sectionHeader = NSCollectionLayoutBoundarySupplementaryItem(layoutSize: headerSize, elementKind: UICollectionView.elementKindSectionHeader, alignment: .top)
            sectionHeader.contentInsets = NSDirectionalEdgeInsets(top: -10, leading: 0, bottom: 0, trailing: 0)
            sectionHeader.pinToVisibleBounds = false
            sectionHeader.zIndex = Int.max
            section.boundarySupplementaryItems = [sectionHeader]
            return section
        }
    
        // MARK: - Third Section
    
        func createThirdSection() -> NSCollectionLayoutSection {
            let itemSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1),
                                                  heightDimension: .absolute(view.frame.size.width * 0.1))
            let item = NSCollectionLayoutItem(layoutSize: itemSize)
            item.contentInsets = NSDirectionalEdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0)
            let groupSize = NSCollectionLayoutSize(widthDimension: .absolute(view.frame.size.width),
                                                   heightDimension: .absolute(view.frame.size.width * 0.67))
            let group = NSCollectionLayoutGroup.vertical(layoutSize: groupSize, subitems: [item])
            group.contentInsets = NSDirectionalEdgeInsets(top: 5, leading: 5, bottom: 5, trailing: 5)

            let section = NSCollectionLayoutSection(group: group)
            section.contentInsets = NSDirectionalEdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0)
            section.orthogonalScrollingBehavior = .groupPaging
            let headerSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1),
                                                    heightDimension: .absolute(25))
            let sectionHeader = NSCollectionLayoutBoundarySupplementaryItem(layoutSize: headerSize, elementKind: UICollectionView.elementKindSectionHeader, alignment: .top)
            sectionHeader.contentInsets = NSDirectionalEdgeInsets(top: -10, leading: 0, bottom: 0, trailing: 0)
            sectionHeader.pinToVisibleBounds = false
            sectionHeader.zIndex = Int.max
            section.boundarySupplementaryItems = [sectionHeader]
            return section
        }
    
        // MARK: - Fourth Section
    
        func createFourthSection() -> NSCollectionLayoutSection {
            let itemSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1),
                                                  heightDimension: .absolute(view.frame.size.width*0.1))
            let item = NSCollectionLayoutItem(layoutSize: itemSize)
            item.contentInsets = NSDirectionalEdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0)

            let groupSize = NSCollectionLayoutSize(widthDimension: .absolute(view.frame.size.width),
                                                   heightDimension: .absolute(view.frame.size.width * 0.37))
            let group = NSCollectionLayoutGroup.vertical(layoutSize: groupSize, subitems: [item])
            group.contentInsets = NSDirectionalEdgeInsets(top: 5, leading: 5, bottom: 5, trailing: 5)

            let section = NSCollectionLayoutSection(group: group)
            section.contentInsets = NSDirectionalEdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0)
            section.orthogonalScrollingBehavior = .groupPaging

            let headerSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1),
                                                    heightDimension: .absolute(25))
            let sectionHeader = NSCollectionLayoutBoundarySupplementaryItem(layoutSize: headerSize, elementKind: UICollectionView.elementKindSectionHeader, alignment: .top)
            sectionHeader.contentInsets = NSDirectionalEdgeInsets(top: -10, leading: 0, bottom: 0, trailing: 0)
            sectionHeader.pinToVisibleBounds = false
            sectionHeader.zIndex = Int.max
            section.boundarySupplementaryItems = [sectionHeader]
            
            return section
        }
    }
