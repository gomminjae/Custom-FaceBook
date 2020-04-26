//
//  CustomTabBarViewController.swift
//  FaceBookUI
//
//  Created by Apple on 2020/02/13.
//  Copyright © 2020 Apple. All rights reserved.
//

import UIKit

class CustomTabBarViewController: UITabBarController {
    
    
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setupController()

        // Do any additional setup after loading the view.
    }
    
    func setupController() {
        let feedController = feedMainViewController(collectionViewLayout: UICollectionViewFlowLayout())
        let navigationController = UINavigationController(rootViewController: feedController)
        
        let friendRequestController = UINavigationController(rootViewController: friendRequestViewController())
        
        let messengerController = UINavigationController(rootViewController: messengerViewController())
        
        let myProfileController = myProfileViewController()
        
        
        navigationController.title = "News Feed"
        navigationController.tabBarItem.image = UIImage(named: "newsfeed")
        
        friendRequestController.title = "Requests"
        friendRequestController.tabBarItem.image = UIImage(named: "friendRequest")
        
        messengerController.title = "Messenger"
        messengerController.tabBarItem.image = UIImage(named: "messenger")
        
        myProfileController.title = "Profile"
        myProfileController.tabBarItem.image = UIImage(named: "myProfile")
        
        
        viewControllers = [navigationController,friendRequestController, messengerController,myProfileController]
        
    }

}
