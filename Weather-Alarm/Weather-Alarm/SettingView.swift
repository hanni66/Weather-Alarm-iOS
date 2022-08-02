//
//  SettingView.swift
//  Weather-Alarm
//
//  Created by 김하은 on 2022/07/21.
//

import SwiftUI

struct SettingView: View {
    @Environment(\.dismiss) var dismiss
    @Binding var isPresented: Bool
    @ObservedObject var SettingVM: SettingVM
    @State private var date = Date()
    @State private var label = ""
    
    var body: some View {
        Text("sheetView")
        List {
            TextField("Label", text: $label)
                .padding()
                .font(.largeTitle)
            DatePicker("", selection: $date, displayedComponents: .hourAndMinute)
                .datePickerStyle(.wheel)
        }
        .listStyle(.grouped)
        .toolbar {
            ToolbarItem(placement: .navigationBarLeading) {
                Button() {
                    isPresented = false
                } label: {
                    Text("Cancel")
                }
            }
            ToolbarItem(placement: .navigationBarTrailing) {
                Button() {
//                    SettingVM.data.addAlarm(label: label, date: date)
                    SettingVM.updateView()
                    isPresented = false
                } label: {
                    Text("Save")
                }
            }
        }
        Button("dismiss") {
            dismiss()
        }
        .font(.title)
        .padding()
        .background(.black)
    }
}

//struct SettingView_Previews: PreviewProvider {
//    static var previews: some View {
//        SettingView()
//    }
//}
