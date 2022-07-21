//
//  MainView.swift
//  Weather-Alarm
//
//  Created by 김하은 on 2022/07/21.
//

import SwiftUI

struct MainView: View {
    @State private var showingSettingSheet = false
    
    var body: some View {
        Text("알람")
        
        Button("+") {   // settingView(sheetView)가 나타남.
            showingSettingSheet.toggle()
        }.sheet(isPresented: $showingSettingSheet){
            SettingView()
        }
        Text("표로 알람 나타내기")
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
