//
//  LeftViewController.swift
//  AppUsers
//
//  Created by Moises on 7/29/17.
//  Copyright © 2017 Moises. All rights reserved.
//

import UIKit

class LeftViewController: UIViewController {

    let textView: UITextView = {
        let tv = UITextView()
        tv.text = "LEFT VIEW CONTROLLER"
        tv.isEditable = false
        tv.contentInset = UIEdgeInsets(top: 20, left: 0, bottom: 0, right: 0)
        return tv
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .yellow
        view.addSubview(textView)
        _ = textView.anchor(nil, left: view.leftAnchor, bottom: nil, right: view.rightAnchor, topConstant: 0, leftConstant: 0, bottomConstant: 0, rightConstant: 0, widthConstant: 0, heightConstant: 30)
    }
}
