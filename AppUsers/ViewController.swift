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
        button.backgroundColor = .red
        button.setTitle("Test button", for: .normal)
        button.addTarget(self, action: #selector(testAlamofire), for: .touchUpInside)
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(testButton)
        _ = testButton.anchor(view.topAnchor, left: nil, bottom: nil, right: nil, topConstant: 0, leftConstant: 0, bottomConstant: 0, rightConstant: 0, widthConstant: 0, heightConstant: 0)
    }

    func testAlamofire(){
        
    }

}

