//
//  Srepeat.swift
//  Weather-Alarm
//
//  Created by 김하은 on 2022/07/21.
//

import SwiftUI

struct Srepeat: View {
    var body: some View {
        Text("반복")
        Text("<뒤로")     // navigation
        // List로 반복하는 요일 만들기 (일~토 기준으로) -> 체크 된걸로 저장.
    }
}

struct Srepeat_Previews: PreviewProvider {
    static var previews: some View {
        Srepeat()
    }
}
