//
//  BaseNavigationController.swift
//  SwiftLaiDong
//
//  Created by 曹来东 on 2021/8/12.
//

import UIKit

class BaseNavigationController: UINavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func pushViewController(_ viewController: UIViewController, animated: Bool) {
        if viewControllers.count > 0 {
            viewController.hidesBottomBarWhenPushed = true
            if let vc = viewController as? BaseViewController {
                vc.navigationItem.leftBarButtonItem = UIBarButtonItem(norImage: "nav_back_black", selImage: "nav_back_black", imageEdgeInsets: UIEdgeInsets(top: 0, left: -5, bottom: 0, right: 0), target: vc, action: #selector(vc.backButtonClick))
            }
        }
        super.pushViewController(viewController, animated: animated)
    }
    
    deinit {
        dPrint(self.className + "销毁")
    }

}
