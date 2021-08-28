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
        return logo
    }()
    
    lazy var logoText: UILabel = {
        let logoText = UILabel()
        logoText.font = UIFont.systemFont(ofSize: 16)
        logoText.text = "心悦购省";
        logoText.textColor = UIColor.hex(hexString: "242424")
        return logoText
    }()
    
    lazy var weChat: UIButton = {
        let weChat = UIButton.init(type: .custom)
        weChat.setImage(UIImage(named: "weChat"), for: .normal)
        weChat.imageEdgeInsets = UIEdgeInsets(top: 0, left: -15, bottom: 0, right: 0)
        weChat.setTitle("微信登录", for: .normal)
        weChat.setTitleColor(UIColor.white, for: .normal)
        weChat.titleLabel?.font = UIFont.boldSystemFont(ofSize: 16)
        weChat.addTarget(self, action: #selector(weChatButtonClick), for: .touchUpInside)
        weChat.backgroundColor = UIColor.hex(hexString: "30BA14")
        weChat.layer.cornerRadius = 25
        weChat.clipsToBounds = true
        return weChat
    }()
    
    lazy var phone: UIButton = {
        let phone = UIButton.init(type: .custom)
        phone.setTitle("手机号码注册/登录", for: .normal)
        phone.setTitleColor(UIColor.hex(hexString: "31313B"), for: .normal)
        phone.titleLabel?.font = UIFont.boldSystemFont(ofSize: 16)
        phone.addTarget(self, action: #selector(phoneButtonClick), for: .touchUpInside)
        phone.backgroundColor = UIColor.white
        phone.layer.cornerRadius = 25
        phone.clipsToBounds = true
        phone.layer.borderWidth = 0.5
        phone.layer.borderColor = UIColor.hex(hexString: "808080").cgColor
        return phone
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let line = self.navigationController?.navLine
        line?.frame = CGRect(x: 0, y: 20, width: screenWidth, height: naviBarHeight)
        line?.backgroundColor = UIColor.blue
        
    }
    
    
    override func configUI() {
        view.addSubview(logo)
        view.addSubview(logoText)
        view.addSubview(weChat)
        view.addSubview(phone)
    }
    override func configLayout() {
        logo.snp.makeConstraints {
            $0.width.height.equalTo(67.5)
            $0.centerX.equalToSuperview()
            $0.top.equalTo(self.view.safeAreaLayoutGuide).offset(naviBarHeight + 50)
        }
        
        logoText.snp.makeConstraints { make in
            make.top.equalTo(logo.snp.bottom).offset(10)
            make.centerX.equalTo(logo)
        }
        weChat.snp.makeConstraints { make in
            make.top.equalTo(logoText.snp.bottom).offset(76)
            make.left.equalToSuperview().offset(40)
            make.right.equalToSuperview().offset(-40)
            make.height.equalTo(50)
        }
        phone.snp.makeConstraints { make in
            make.top.equalTo(weChat.snp.bottom).offset(20)
            make.right.height.left.equalTo(weChat)
        }
    }

}

extension LoginViewController{
    @objc func logoButtonClick(logo: UIButton){
        dPrint("logoButtonClick")
    }
    
    @objc func weChatButtonClick(weChat: UIButton){
        dPrint("weChatButtonClick")
    }
    
    @objc func phoneButtonClick(phone: UIButton){
        navigationController?.pushViewController(PhoneLoginViewController(), animated: true)
        
    }
    
}
