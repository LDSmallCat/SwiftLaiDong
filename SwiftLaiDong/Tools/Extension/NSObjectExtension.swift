//
//  NSObjectExtension.swift
//  SwiftLaiDong
//
//  Created by 曹来东 on 2021/8/12.
//
import Foundation
extension NSObject {
    var className: String {
        let name = type(of: self).description()
        if name.contains(".") {
            return name.components(separatedBy: ".").last ?? name
        }else {
            return name
        }
        
    }
    
}
