//
//  Text.swift
//  Mastering_SwiftUI_Example
//
//  Created by 김태성 on 2023/02/10.
//

import Foundation
import SwiftUI

let longText = "그대여 아무 걱정하지 말아요 우리 함께 노래합시다 그대 아픈 기억들 모두 그대여 그대 가슴에 깊이 묻어버리고 지나간 것은 지나간대로 그런 의미가 있죠 떠난 이에게 노래하세요 후회없이 사랑했노라 말해요 그대는 너무 힘든 일이 많았죠 새로움을 잃어버렸죠 그대 슬픈 얘기들 모두 그대여 그대 탓으로 훌훌 털어버리고 지나간 것은 지나간대로 그런 의미가 있죠 우리 다함께 노래합시다 후회 없이 꿈을 꾸었다 말해요 지나간 것은 지나간대로 그런 의미가 있죠 우리 다함께 노래 합시다 후회 없이 꿈을 꾸었다 말해요"

struct Text_Tutorial: View {
    var body: some View {
        VStack {
            Text(longText)
                .font(.body)
                .foregroundColor(.blue)
                .background(.white)
                .lineLimit(7)
                .truncationMode(.middle)
                .lineSpacing(6)
        }
    }
}

struct Text_Tutorial_Preview: PreviewProvider {
    static var previews: some View {
        Text_Tutorial()
    }
}
