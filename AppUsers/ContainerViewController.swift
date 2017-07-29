//
//  ContainerViewController.swift
//  AppUsers
//
//  Created by Moises on 7/29/17.
//  Copyright © 2017 Moises. All rights reserved.
//

import UIKit
import SlideMenuControllerSwift

class ContainerViewController: SlideMenuController{
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //addBarButton()
        SlideMenuOptions.leftViewWidth = 50
        SlideMenuOptions.contentViewScale = 0.50
    }
    
    override func awakeFromNib() {
        if let controller = self.storyboard?.instantiateViewController(withIdentifier: "Main") {
            self.mainViewController = controller
        }
        if let controller = self.storyboard?.instantiateViewController(withIdentifier: "Left") {
            self.leftViewController = controller
        }
        super.awakeFromNib()
    }
    
    func addBarButton(){
        print("Added bar buttons to Container")
        addLeftBarButtonWithImage(UIImage(named: "menu1")!)
        addRightBarButtonWithImage(UIImage(named: "menu2")!)
    }
}
