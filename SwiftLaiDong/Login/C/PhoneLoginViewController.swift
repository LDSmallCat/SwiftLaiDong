//
//  PhoneLoginViewController.swift
//  SwiftLaiDong
//
//  Created by 曹来东 on 2021/8/28.
//

import UIKit

class PhoneLoginViewController: BaseViewController {
    
    lazy var titleText: UILabel = {
        let titleText = UILabel()
        titleText.font = UIFont.boldSystemFont(ofSize: 30)
        titleText.text = "请输入手机号";
        titleText.textColor = UIColor.hex(hexString: "242424")
        return titleText
    }()
    
    lazy var code: UIButton = {
        let code = UIButton.init(type: .custom)
        code.setTitle("获取验证码", for: .normal)
        code.addTarget(self, action: #selector(codeButtonClick), for: .touchUpInside)
        code.backgroundColor = UIColor.hex(hexString: "E6E9F2")
        return code
    }()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    override func configUI() {
        view.addSubview(titleText)
    }
    
    override func configLayout() {
        titleText.snp.makeConstraints { maker in
            maker.left.equalTo(40)
            maker.top.equalTo(self.view.safeAreaLayoutGuide).offset(naviBarHeight + 50)
            maker.height.equalTo(30)
        }
    }

}

extension PhoneLoginViewController {
    @objc func codeButtonClick() {
        dPrint("codeButtonClick")
    }
}
