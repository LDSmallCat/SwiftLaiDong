//
//  LoginViewController.swift
//  SwiftLaiDong
//
//  Created by 曹来东 on 2021/8/27.
//

import UIKit


class LoginViewController: BaseViewController {
    lazy var logo: UIButton = {
        let logo = UIButton.init(type: .custom)
        logo.setBackgroundImage(UIImage(named: "loginLogo"), for: .normal)
        logo.addTarget(self, action: #selector(logoButtonClick), for: .touchUpInside)
        logo.tag = 999
        logo.backgroundColor = UIColor.red
        return logo
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.blue
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        
        print(UIScreen.main.bounds)
        print(view.bounds)
        //44
        print(keyWindow.windowScene!.statusBarManager!.statusBarFrame.size)
        print(logo.frame)
        print(self.view.safeAreaLayoutGuide.layoutFrame)
        
        
    }
    override func configUI() {
        view.addSubview(logo)
    }
    override func configLayout() {
        logo.snp.makeConstraints {
            $0.width.height.equalTo(67.5)
            $0.centerX.equalToSuperview()
//            $0.bottom.equalTo(self.view.safeAreaLayoutGuide).offset(0)
            $0.top.equalTo(self.view.safeAreaLayoutGuide)
        }
    }

}

extension LoginViewController{
    @objc func logoButtonClick(logo: UIButton){
        print(logo.tag)
    }
}
