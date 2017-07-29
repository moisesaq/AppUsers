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
        addBarButton()
        //addBarButton2()
        navigationItem.title = "Dragon ball Z"
        view.backgroundColor = .white
        view.addSubview(testButton)
        _ = testButton.anchor(view.topAnchor, left: nil, bottom: nil, right: nil, topConstant: 70, leftConstant: 0, bottomConstant: 0, rightConstant: 0, widthConstant: 100, heightConstant: 0)
    }

    func testAlamofire(){
        //self.slideMenuController()?.openLeft()
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
    
    func addBarButton(){
        if let slideMenuController = self.slideMenuController(){
            print("Added bar buttons")
            slideMenuController.addLeftBarButtonWithImage(UIImage(named: "menu_list")!)
            slideMenuController.addRightBarButtonWithImage(UIImage(named: "menu_list")!)
        }
    }
    
    fileprivate func addBarButton2(){
        navigationItem.leftBarButtonItem = UIBarButtonItem(title: "Sign Out", style: .plain, target: self, action: nil)
    }

}

