//
//  AppDelegate.swift
//  CollectionView
//
//  Created by Danil Goncharov on 15.11.2021.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        let mediaViewController = MediaViewController()
        let mediaNavigationController = UINavigationController(rootViewController: mediaViewController)
        
        let offerViewController = OfferViewController()
        let offerNavigationController = UINavigationController(rootViewController: offerViewController)
        
        let mainViewController = MainViewController()
        let mainNavigationController = UINavigationController(rootViewController: mainViewController)
        
        let searchViewController = SearchViewController()
        let searchNavigationController = UINavigationController(rootViewController: searchViewController)
        
        mediaViewController.tabBarItem = UITabBarItem(title: "Медиатека", image: UIImage(systemName: "photo.fill.on.rectangle.fill"), tag: 0)
        offerViewController.tabBarItem = UITabBarItem(title: "Для Вас", image: UIImage(systemName: "heart.text.square.fill"), tag: 1)
        mainViewController.tabBarItem = UITabBarItem(title: "Альбомы", image: UIImage(systemName: "rectangle.stack.fill"), tag: 2)
        searchViewController.tabBarItem = UITabBarItem(title: "Поиск", image: UIImage(systemName: "magnifyingglass"), tag: 3)
        
        let tabBarController = UITabBarController()
        tabBarController.setViewControllers([
            mediaNavigationController,
            offerNavigationController,
            mainNavigationController,
            searchNavigationController
        ], animated: true)
        
        window?.rootViewController = tabBarController
        window?.makeKeyAndVisible()
        
        return true
    }
}

