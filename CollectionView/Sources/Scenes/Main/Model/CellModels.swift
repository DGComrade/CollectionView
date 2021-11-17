//
//  CellModels.swift
//  CollectionView
//
//  Created by Danil Goncharov on 17.11.2021.
//

import UIKit

struct Models {
    let typesSection: [SettingsTypeCell]
}

enum SettingsTypeCell {
    case albumCell(content: AlbumCell)
    case tableCell(content: TableCell)
}

struct AlbumCell {
    let image: String
    let imageTitle: String
    let imageCount: Int
}

struct TableCell {
    let icon: UIImage?
    let titleCell: String
    let imageCount: Int
}
