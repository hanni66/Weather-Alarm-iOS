//
//  ViewController.swift
//  Weather_Alarm_iOS
//
//  Created by 김하은 on 2022/08/19.
//

import UIKit

class ViewController: UIViewController {
    
    // Weather-Alarm
    lazy var mainText: UILabel = {
        let mainText = UILabel()
        mainText.textColor = .black
        mainText.font = UIFont(name: "NotoSansKR-Bold", size: 20)
        mainText.font = UIFont.systemFont(ofSize: 30)
        mainText.text = "Weather-Alarm"
        mainText.sizeToFit()
        return mainText
    }()
    
    // 버튼
    lazy var linkConnectionBtn: UIButton = {
        let connectionBtn = UIButton()
        connectionBtn.setTitle("더 알아보기", for: .normal)     // 버튼에 들어갈 글씨
        connectionBtn.backgroundColor = .white       // 버튼 색상
//        connectionBtn.setTitleColor(.darkGreen, for: .normal) // 버튼 글씨 색상
        connectionBtn.layer.cornerRadius = 5
        connectionBtn.layer.borderWidth = 1
//        connectionBtn.layer.borderColor = UIColor.darkGreen?.cgColor
        connectionBtn.layer.cornerRadius = (15)
        connectionBtn.translatesAutoresizingMaskIntoConstraints = false
//        connectionBtn.addTarget(self, action: #selector(connectionAction), for: .touchUpInside)
        return connectionBtn
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.addSubview(self.mainText)
        self.view.addSubview(self.linkConnectionBtn)
    }


}

