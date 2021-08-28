//
//  UINavigationControllerExtension.swift
//  SwiftLaiDong
//
//  Created by 曹来东 on 2021/8/28.
//

import Foundation

extension UINavigationController {
     var navLine: UIView? {

        return self.navigationBar.subviews.first!.subviews.last
    }
    
}
