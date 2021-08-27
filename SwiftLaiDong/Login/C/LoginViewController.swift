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

        
    }
    

    override func configUI() {
        view.addSubview(logo)
    }
    override func configLayout() {
        let width = logo.backgroundImage(for: .normal)!.size.width
        let height = logo.backgroundImage(for: .normal)!.size.height
        
        let x = UIScreen.main.bounds.width / 2 - width / 2
        logo.frame = CGRect(x: x, y: 100, width: width, height: height)
    }

}

extension LoginViewController{
    @objc func logoButtonClick(logo: UIButton){
        print(logo.tag)
    }
}
