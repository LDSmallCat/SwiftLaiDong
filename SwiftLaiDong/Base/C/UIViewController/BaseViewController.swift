//
//  BaseViewController.swift
//  SwiftLaiDong
//
//  Created by 曹来东 on 2021/8/12.
//

import UIKit

class BaseViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.white
        configBackButton()
        configUI()
        configLayout()
    }
    deinit {
        dPrint(self.className + "销毁")
    }


}
//MARK: 网络请求
extension BaseViewController {
    @objc func loadData() { }
}
//MARK: 添加子视图，子视图 布局
extension BaseViewController {
    @objc func configUI() { }
    @objc func configLayout() { }
    @objc func configBackButton() { }
}
//MARK: 左上角 返回按钮点击事件
extension BaseViewController {
    
    @objc func backButtonClick() {
        if self.isModalInPresentation {
            self.dismiss(animated: true, completion: nil)
        }else{
            self.navigationController?.popViewController(animated: true)
        }
        
    }
}
