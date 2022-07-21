//
//  Ssound.swift
//  Weather-Alarm
//
//  Created by 김하은 on 2022/07/21.
//

import SwiftUI

struct Ssound: View {
    var body: some View {
        Text("사운드")
        Text("<뒤로")     // navigation
        // Form으로 만들기
        Text("진동")  // navigation 연결 -> 진동 view 만들기
        Text("노래")  // navigation 연결 -> 노래 view 만들기
        Text("벨소리") // 내장 벨소리 선택
        Text("없음")  // sound 없음 선택
        
    }
}

struct Ssound_Previews: PreviewProvider {
    static var previews: some View {
        Ssound()
    }
}
