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
        /*addNavBar()
        addBarButton()
        SlideMenuOptions.leftViewWidth = 30
        SlideMenuOptions.contentViewScale = 0.50*/
    }
    
    /*override func awakeFromNib() {
        if let controller = self.storyboard?.instantiateViewController(withIdentifier: "Main") {
            self.mainViewController = controller
        }
        if let controller = self.storyboard?.instantiateViewController(withIdentifier: "Left") {
            self.leftViewController = controller
        }
        super.awakeFromNib()
    }*/
    
    func addNavBar(){
        let navBar: UINavigationBar = UINavigationBar(frame: CGRect(x: 0, y: 0, width: 320, height: 44))
        self.view.addSubview(navBar);
        let navItem = UINavigationItem(title: "SomeTitle");
        let doneItem = UIBarButtonItem(barButtonSystemItem: .done, target: nil, action: nil);
        navItem.rightBarButtonItem = doneItem;
        navBar.setItems([navItem], animated: false);
    }
    
    func addBarButton(){
        print("Added bar buttons to Container")
        addLeftBarButtonWithImage(UIImage(named: "menu1")!)
        addRightBarButtonWithImage(UIImage(named: "menu2")!)
    }
}
