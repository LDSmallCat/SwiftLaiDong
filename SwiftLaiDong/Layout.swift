//
//  Layout.swift
//  SwiftLaiDong
//
//  Created by 曹来东 on 2021/8/27.
//

var screenWidth: CGFloat { UIScreen.main.bounds.width }

var screenHeight: CGFloat { UIScreen.main.bounds.height }

var isIphoneX: Bool { keyWindow.safeAreaInsets.bottom > 0 }

var statusBarHeight:CGFloat{keyWindow.windowScene?.statusBarManager?.statusBarFrame.height ?? 0}

var navBarHeight: CGFloat { return 44 }

var tabBarHeight: CGFloat { isIphoneX ? 49 + 34 : 49 }

var keyWindow: UIWindow {
    var window = UIApplication.shared.windows.filter{ $0.isKeyWindow }.first
    
    if window == nil {
        
        window = UIApplication.shared.connectedScenes.compactMap{
            $0 as? UIWindowScene
        }.flatMap{ $0.windows }.filter{ $0.isKeyWindow }.first
        
    }

    if window == nil {
        window = UIWindow()
    }
    return window!
}


