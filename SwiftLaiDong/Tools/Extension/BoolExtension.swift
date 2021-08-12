//
//  BoolExtension.swift
//  SwiftLaiDong
//
//  Created by 曹来东 on 2021/8/12.
//

extension Bool {
    static var random: Bool {
        Int.random(in: 0 ..< 2) == 1
    }
}
