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
    
    // Weather-Alarm
    lazy var mainWeatherText: UILabel = {
        let mainWeatherText = UILabel()
        mainWeatherText.textColor = .black
        mainWeatherText.font = UIFont(name: "NotoSansKR-Bold", size: 20)
        mainWeatherText.font = UIFont.systemFont(ofSize: 30)
        mainWeatherText.text = "날씨 알람"
        mainWeatherText.sizeToFit()
        return mainWeatherText
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.addSubview(self.mainText)
        self.view.addSubview(self.mainWeatherText)
    }


}

