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
        mainText.text = "알람"
        mainText.sizeToFit()
        return mainText
    }()
    
    // 버튼
    lazy var settingBtn: UIButton = {
        let settingBtn = UIButton()
        settingBtn.setTitle("세팅view로 가는 버튼", for: .normal)     // 버튼에 들어갈 글씨
        settingBtn.backgroundColor = .white       // 버튼 색상
//        settingBtn.setTitleColor(.darkGreen, for: .normal) // 버튼 글씨 색상
        settingBtn.layer.cornerRadius = 5
        settingBtn.layer.borderWidth = 1
//        settingBtn.layer.borderColor = UIColor.darkGreen?.cgColor
        settingBtn.layer.cornerRadius = (15)
        settingBtn.translatesAutoresizingMaskIntoConstraints = false
//        settingBtn.addTarget(self, action: #selector(connectionAction), for: .touchUpInside)
        return settingBtn
    }()
    
    // 버튼
    lazy var showTimeBtn: UIButton = {
        let showTimeBtn = UIButton()
        showTimeBtn.setTitle("시간을 보여주는 버튼", for: .normal)     // 버튼에 들어갈 글씨
        showTimeBtn.backgroundColor = .white       // 버튼 색상
//        showTimeBtn.setTitleColor(.darkGreen, for: .normal) // 버튼 글씨 색상
        showTimeBtn.layer.cornerRadius = 5
        showTimeBtn.layer.borderWidth = 1
//        showTimeBtn.layer.borderColor = UIColor.darkGreen?.cgColor
        showTimeBtn.layer.cornerRadius = (15)
        showTimeBtn.translatesAutoresizingMaskIntoConstraints = false
//        showTimeBtn.addTarget(self, action: #selector(connectionAction), for: .touchUpInside)
        return showTimeBtn
    }()
    
    // 버튼
    lazy var selectTimeBtn: UIButton = {
        let selectTimeBtn = UIButton()
        selectTimeBtn.setTitle("시간을 선택하는 버튼", for: .normal)     // 버튼에 들어갈 글씨
        selectTimeBtn.backgroundColor = .white       // 버튼 색상
//        showTimeBtn.setTitleColor(.darkGreen, for: .normal) // 버튼 글씨 색상
        selectTimeBtn.layer.cornerRadius = 5
        selectTimeBtn.layer.borderWidth = 1
//        selectTimeBtn.layer.borderColor = UIColor.darkGreen?.cgColor
        selectTimeBtn.layer.cornerRadius = (15)
        selectTimeBtn.translatesAutoresizingMaskIntoConstraints = false
//        selectTimeBtn.addTarget(self, action: #selector(connectionAction), for: .touchUpInside)
        return selectTimeBtn
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.addSubview(self.mainText)
        self.view.addSubview(self.settingBtn)
        self.view.addSubview(self.showTimeBtn)
        self.view.addSubview(self.selectTimeBtn)
    }


}

