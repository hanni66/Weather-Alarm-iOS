//
//  SettingViewController.swift
//  Weather_Alarm_iOS
//
//  Created by 김하은 on 2022/08/19.
//

import UIKit

class SettingViewController: UIViewController {
    
    // Weather-Alarm
    lazy var mainText: UILabel = {
        let mainText = UILabel()
        mainText.textColor = .black
        mainText.font = UIFont(name: "설정", size: 20)
        mainText.font = UIFont.systemFont(ofSize: 30)
        mainText.text = "Weather-Alarm Setting View"
        mainText.sizeToFit()
        return mainText
    }()
    
    // 데이트피커 사용
    lazy var DateTime: UILabel = {
        let dateTime = UILabel()
        dateTime.textColor = .black
        dateTime.font = UIFont(name: "현재시간", size: 20)
        dateTime.font = UIFont.systemFont(ofSize: 30)
        dateTime.text = "Weather-Alarm Setting View"
        dateTime.sizeToFit()
        return dateTime
    }() // 현재 시간을 표시할 라벨
    
    lazy var PickerTime: UILabel = {
        let pickerTime = UILabel()
        pickerTime.textColor = .black
        pickerTime.font = UIFont(name: "선택 시간", size: 20)
        pickerTime.font = UIFont.systemFont(ofSize: 30)
        pickerTime.text = "Weather-Alarm Setting View"
        pickerTime.sizeToFit()
        return pickerTime
    }() // 선택 시간을 표시할 라벨
    
    var isClickConfirm = false // 얼럿 확인 버튼이 눌렸는지 저장할 변수
    
    @IBAction func DatePicker(_ sender: UIDatePicker) {
        let formatter = DateFormatter() // 특정 포맷으로 날짜를 보여주기 위한 변수 선언
        formatter.dateFormat = "yyyy-MM-dd HH:mm" // 날짜 포맷 지정
        PickerTime.text = formatter.string(from: sender.date) // 선택 시간 라벨에 지정한 날짜 포맷으로 입력
    }
    
    @objc func timerOn() {
        isClickConfirm = false // 초기화
    }
    
    @objc func updatetime() {
       let formatter = DateFormatter() // 특정 포맷으로 날짜를 보여주기 위한 변수 선언
       formatter.dateFormat = "yyyy-MM-dd HH:mm" // 날짜 포맷 지정
       DateTime.text = formatter.string(from: Date()) // 현재 시간 라벨에 지정한 날짜 포맷으로 입력
       
       if isClickConfirm { // 얼럿 확인 버튼이 눌렸으면(true), 종료
           return
       }
       
       if PickerTime.text == DateTime.text { // 선택 시간과 현재 시간이 같으면
          self.isClickConfirm = true // 얼럿 확인 버튼을 누르면, true 로 변경

          // 60초 후에 timerOn 함수를 실행시키는 타이머
          Timer.scheduledTimer(timeInterval: 60.0, target: self, selector: #selector(self.timerOn), userInfo: nil, repeats: false)
           // 얼럿창 설정
           let alert = UIAlertController(title: "알림", message: "설정된 시간입니다 !!!", preferredStyle: .alert)
           alert.addAction(UIAlertAction(title: "확인", style: UIAlertAction.Style.default) { UIAlertAction in
           })
           self.present(alert, animated: true, completion: nil) // 얼럿 실행
       }
   }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.view.addSubview(mainText)
        
        // 1초마다 updatetime함수를 실행시키는 타이머
        Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(updatetime), userInfo: nil, repeats: true)
    }


}
