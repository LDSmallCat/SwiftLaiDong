//
//  Global.swift
//  SwiftLaiDong
//
//  Created by 曹来东 on 2021/8/12.
//
import UIKit

//let screenWidth = UIScreen.main.bounds.width
//let screenHeight = UIScreen.main.bounds.height
//let defaultCellHeight: CGFloat = 80

//MARK: - 宽度比例缩放
/// 宽度比例缩放
/// - Parameters:
///   - originalWidth: 设计图上标注宽度
///   - originalReferenceWidth: 设计图上标注宽度 参照的 父视图宽度（屏幕宽度）
///   - currentReferenceWidth: 当前参照的 父试图宽度（屏幕宽度）
/// - Returns: 当前参照的 父试图宽度（屏幕宽度）上对应的宽度
func ld_scaleWidth(_ originalWidth: CGFloat ,_ originalReferenceWidth: CGFloat = 375.0,_ currentReferenceWidth: CGFloat = screenWidth) -> CGFloat{
    let scale = originalWidth / originalReferenceWidth
    return currentReferenceWidth * scale
}

//MARK: - 获取当前显示的控制器对象
//var topVC: UIViewController? {
//    var resultVC: UIViewController?
//
//    resultVC = _topVC(keyWindow?.rootViewController)
//    while resultVC?.presentedViewController != nil {
//        resultVC = _topVC(resultVC?.presentedViewController)
//    }
//    return resultVC
//}
//
//private func _topVC(_ vc: UIViewController?) -> UIViewController? {
//
//   if vc is UINavigationController {
//           return _topVC((vc as? UINavigationController)?.topViewController)
//       } else if vc is UITabBarController {
//           return _topVC((vc as? UITabBarController)?.selectedViewController)
//       } else {
//           return vc
//       }
//}

//MARK: - debugPrint
func dPrint<T>(_ message: T, file: String = #file, function: String = #function, lineNumber: Int = #line) {
    #if DEBUG
        let fileName = (file as NSString).lastPathComponent
    print("[\(fileName):funciton:\(function):line:\(lineNumber)]- \(message)")
    #endif
}


//MARK: - 导航栏高度
//var navgationBarHeight: CGFloat {
//    return topVC?.navigationController?.navigationBar.frame.height ?? 0
//}
////MARK: - 导航栏+ 状态栏 高度
//var navigationBarAreaHeight: CGFloat {
//    return statusBarHeight + (topVC?.navigationController?.navigationBar.frame.height ?? 0)
//}
