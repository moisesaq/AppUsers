//
//  MainNavigationViewController.swift
//  AppUsers
//
//  Created by Moises on 7/29/17.
//  Copyright © 2017 Moises. All rights reserved.
//

import UIKit

class MainNavigationViewController: UINavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let mainViewController = ViewController()
        let leftViewController = LeftViewController()
        let rightVieController = RightViewController()
        let slideMenuController = ContainerViewController(mainViewController: mainViewController, leftMenuViewController: leftViewController, rightMenuViewController: rightVieController)
        viewControllers = [slideMenuController]
    }
    
}
