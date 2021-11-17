//
//  ViewController.swift
//  CollectionView
//
//  Created by Danil Goncharov on 15.11.2021.
//

import UIKit

class AlbumViewController: UIViewController {
    
    var data = [Models]()
    
    private let collectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.backgroundColor = .white
        collectionView.register(CollectionViewCell.self, forCellWithReuseIdentifier: "CollectionViewCell")
        collectionView.register(TableCollectionViewCell.self, forCellWithReuseIdentifier: "TableCollectionViewCell")
        collectionView.register(AlbumHeader.self, forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: "AlbumHeader")
      
        return collectionView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupHierarchy()
        setupLayouts()
        setupDelegate()
        setupView()
        setupCollectionView()
        configureModels()
    }
    
    private func setupHierarchy() {
        view.addSubview(collectionView)
    }
    
    private func setupLayouts() {
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        collectionView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        collectionView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        collectionView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        collectionView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
    }
    
    private func setupDelegate() {
        collectionView.dataSource = self
        collectionView.delegate = self
    }
    
    private func setupView() {
        navigationController?.navigationBar.prefersLargeTitles = true
        title = "Альбомы"
    }
    
    func createLayout() -> UICollectionViewLayout {
        return UICollectionViewCompositionalLayout { (sectionIndex, layoutEnvironment) -> NSCollectionLayoutSection? in
                
                switch sectionIndex {
                case 0: return self.createFirstSection()
                case 1: return self.createSecondSection()
                case 2: return self.createThirdSection()
                default:
                    return self.createFourthSection()
                }
            }
    } 
        
    private func setupCollectionView() {
        collectionView.collectionViewLayout = createLayout()
    }
}

extension AlbumViewController: UICollectionViewDataSource, UICollectionViewDelegate {
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return data.count
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return data[section].typesSection.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
                
        let data =  data[indexPath.section].typesSection[indexPath.row]
        
        switch data.self {
            case .albumCell(content: let content):
                let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CollectionViewCell", for: indexPath) as! CollectionViewCell
                    cell.configurationContentOfCell(with: content)
                    cell.contentView.backgroundColor = .clear
                    return cell
                
            case .tableCell(content: let content):
                let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "TableCollectionViewCell", for: indexPath) as! TableCollectionViewCell
                    cell.configurationContentOfCell(with: content)
                    cell.contentView.backgroundColor = .clear
                    return cell
                }
    }
    
    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
           
           let header = collectionView.dequeueReusableSupplementaryView(ofKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: "AlbumHeader", for: indexPath) as! AlbumHeader
           
           let section = indexPath.section
           
           switch (section) {
           case 0: header.configureBothHeaders(leftHeader: "Мои альбомы", rightHeader: "Все")
               return header
           case 1: header.configureLeftHeader("Люди и места")
               return header
           case 2: header.configureLeftHeader("Типы медиафайлов")
               return header
           case 3: header.configureLeftHeader("Другое")
               return header
           default: return UICollectionReusableView()
           }    
       }
}
