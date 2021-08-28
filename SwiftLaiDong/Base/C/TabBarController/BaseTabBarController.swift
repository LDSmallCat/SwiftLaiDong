//
//  BaseTabBarController.swift
//  SwiftLaiDong
//
//  Created by 曹来东 on 2021/8/12.
//

import UIKit

class BaseTabBarController: UITabBarController {
    let titles = ["Home","Find","Some","Mine"]
    let images = ["tabbar_mainframe","tabbar_contacts","tabbar_discover","tabbar_me"]
    let selectedImages = ["tabbar_mainframe_S","tabbar_contacts_S","tabbar_discover_S","tabbar_me_S"]
    let viewControllers_: [UIViewController] = [
                HomeViewController(),FindViewController(),
                SomeViewController(),MineViewController()
              ]
    override func viewDidLoad() {
        super.viewDidLoad()
        
        addChilds()
        
    }
    deinit {
        dPrint(self.className + "销毁")
    }
}
extension BaseTabBarController {
    func addChilds() {
        for index in 0 ..< viewControllers_.count {
            let title = titles[index]
            let image = images[index]
            let selectedimage = selectedImages[index]
            let vc = viewControllers_[index]
            addChild(viewController: vc, title: title, image: image, selectedImage: selectedimage)
        }
    }

    func addChild(viewController: UIViewController,title: String,image: String,selectedImage: String) {
        let child = BaseNavigationController(rootViewController: viewController)
        child.tabBarItem.image = UIImage(named: image)?.withRenderingMode(.alwaysOriginal)
        child.tabBarItem.selectedImage = UIImage(named: selectedImage)?.withRenderingMode(.alwaysOriginal)
        child.tabBarItem.setTitleTextAttributes([NSAttributedString.Key.foregroundColor : UIColor.tabBarNormal], for: .normal)
        child.tabBarItem.setTitleTextAttributes([NSAttributedString.Key.foregroundColor : UIColor.tabBarSelected], for: .selected)
        viewController.title = title;
        addChild(child)
    }
}
