//
//  SettingView.swift
//  Weather-Alarm
//
//  Created by 김하은 on 2022/07/21.
//

import SwiftUI

struct SettingView: View {
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        Text("sheetView")
        
        Button("dismiss") {
            dismiss()
        }
        .font(.title)
        .padding()
        .background(.black)
    }
}

struct SettingView_Previews: PreviewProvider {
    static var previews: some View {
        SettingView()
    }
}
