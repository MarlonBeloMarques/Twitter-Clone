//
//  MainTabController.swift
//  Twitter Clone
//
//  Created by Marlon Marques on 24/05/22.
//

import UIKit

class MainTabController: UITabBarController {
    
    // MARK: - Properties
    
    // MARK: - Lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()

         configureViewControllers()
    }
    
    // MARK: Helpers
    
    func configureViewControllers() {
        
        let feed = FeedController()
        feed.tabBarItem.image = UIImage(named: "home_unselected")
        
        let explore = ExploreController()
        explore.tabBarItem.image = UIImage(named: "home_unselected")

        let notifications = NotificationsController()
        notifications.tabBarItem.image = UIImage(named: "home_unselected")

        let conversations = ConversationsController()
        conversations.tabBarItem.image = UIImage(named: "home_unselected")
                
        configureTabBarBackgroundColor()
        viewControllers = [feed, explore, notifications, conversations]
    }

    private func configureTabBarBackgroundColor() {
        if #available(iOS 15.0, *) {
            let appearance = UITabBarAppearance()
            appearance.configureWithOpaqueBackground()
            appearance.backgroundColor = .systemBackground
            tabBar.standardAppearance = appearance
            tabBar.scrollEdgeAppearance = tabBar.standardAppearance
        }
    }
}
