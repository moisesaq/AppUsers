//
//  ViewController.swift
//  AppUsers
//
//  Created by Moises on 7/29/17.
//  Copyright © 2017 Moises. All rights reserved.
//

import UIKit
import Alamofire

class ViewController: UIViewController {

    
    lazy var testButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = .green
        button.setTitle("Test button", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.addTarget(self, action: #selector(testAlamofire), for: .touchUpInside)
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        addNavBar()
        navigationItem.title = "Dragon ball Z"
        view.backgroundColor = .white
        view.addSubview(testButton)
        _ = testButton.anchor(view.topAnchor, left: nil, bottom: nil, right: nil, topConstant: 70, leftConstant: 0, bottomConstant: 0, rightConstant: 0, widthConstant: 100, heightConstant: 0)
    }

    //TEST ALAMOFIRE
    func testAlamofire(){
        Alamofire.request("https://randomuser.me/api").responseJSON(completionHandler: { response in
            print("Request: \(String(describing: response.request))")   // original url request
            print("Response: \(String(describing: response.response))") // http url response
            print("Result: \(response.result)")                         // response serialization result
            
            if let json = response.result.value {
                print("JSON: \(json)") // serialized json response
            }
            
            if let data = response.data, let utf8Text = String(data: data, encoding: .utf8) {
                print("Data: \(utf8Text)") // original server data as UTF8 string
            }
        })
    }
    
    //ADD NAVIGATION BAR FOR OPEN MENU
    func addNavBar(){
        let navBar: UINavigationBar = UINavigationBar(frame: CGRect(x: 0, y: 0, width: view.frame.width, height: 64))
        navBar.backgroundColor = .green
        self.view.addSubview(navBar)
        let navItem = UINavigationItem(title: "SomeTitle")
        let doneItem = UIBarButtonItem(barButtonSystemItem: .done, target: self, action: #selector(openMenuRight))
        let menuItem = UIBarButtonItem(image: UIImage(named: "menu_list"), style: .plain, target: self, action: #selector(openMenuLeft))
        navItem.rightBarButtonItem = doneItem
        navItem.leftBarButtonItem = menuItem
        navBar.setItems([navItem], animated: false);
    }
    
    func openMenuLeft(){
        self.slideMenuController()?.openLeft()
    }
    
    func openMenuRight(){
        self.slideMenuController()?.openRight()
    }

}

