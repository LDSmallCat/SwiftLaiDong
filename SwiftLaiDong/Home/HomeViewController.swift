//
//  HomeViewController.swift
//  SwiftLaiDong
//
//  Created by 曹来东 on 2021/8/12.
//

import UIKit

class HomeViewController: BaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        keyWindow.rootViewController = BaseNavigationController(rootViewController: LoginViewController())
        
    }

}
