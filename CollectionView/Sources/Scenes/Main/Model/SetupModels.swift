//
//  SetupModels.swift
//  CollectionView
//
//  Created by Danil Goncharov on 17.11.2021.
//

import UIKit

extension AlbumViewController {
    
    func configureModels() {
        
        data.append(Models(typesSection: [
            .albumCell(content: AlbumCell(image: "image1", imageTitle: "Природа", imageCount: 27)),
            .albumCell(content: AlbumCell(image: "image2", imageTitle: "Путешествия", imageCount: 45)),
            .albumCell(content: AlbumCell(image: "image3", imageTitle: "Работа", imageCount: 6)),
            .albumCell(content: AlbumCell(image: "image4", imageTitle: "Машина", imageCount: 11)),
            .albumCell(content: AlbumCell(image: "image5", imageTitle: "Закаты", imageCount: 18)),
            .albumCell(content: AlbumCell(image: "image6", imageTitle: "Собака", imageCount: 24)),
            ]))
        
        data.append(Models(typesSection: [
            .albumCell(content: AlbumCell(image: "image7", imageTitle: "Люди", imageCount: 48)),
            .albumCell(content: AlbumCell(image: "image8", imageTitle: "Места", imageCount: 120)),
            ]))
        
        data.append(Models(typesSection: [
            .tableCell(content: TableCell(icon: UIImage(systemName: "video"),titleCell: "Видео",
                imageCount: 27)),
            .tableCell(content: TableCell(icon: UIImage(systemName: "person.crop.square"), titleCell: "Селфи", imageCount: 184)),
            .tableCell(content: TableCell(icon: UIImage(systemName: "cube"), titleCell: "Портреты", imageCount: 46)),
            .tableCell(content: TableCell(icon: UIImage(systemName: "camera.viewfinder"), titleCell: "Снимки экрана", imageCount: 11)),
            .tableCell(content: TableCell(icon: UIImage(systemName: "record.circle"), titleCell: "Записи экрана", imageCount: 5)),
            .tableCell(content: TableCell(icon: UIImage(systemName: "rhombus"), titleCell: "Анимированные", imageCount: 18))
            ]))
        
        data.append(Models(typesSection: [
            .tableCell(content: TableCell(icon: UIImage(systemName: "square.and.arrow.down"), titleCell: "Импортированные", imageCount: 79)),
            .tableCell(content: TableCell(icon: UIImage(systemName: "eye.slash"), titleCell: "Скрытые", imageCount: 15)),
            .tableCell(content: TableCell(icon: UIImage(systemName: "trash"), titleCell: "Недавно удаленные", imageCount: 28))
        ]))
    }
}
