//
//  Alert.swift
//  Mastering_SwiftUI_Example
//
//  Created by 김태성 on 2023/02/12.
//

import Foundation
import SwiftUI

struct Alert_Tutorial: View {
    @State private var message = ""
    
    @State private var showAlert = false
    @State private var showImageAlert = false
    
    @State private var imageData: ImageData? = nil

    
    var body: some View {
        VStack {
            Text(message)
                .font(.largeTitle)
            
            Button {
                showAlert = true
            } label: {
                Text("Show Alert")
            }
            .padding()
            .alert("경고창", isPresented: $showAlert) {
                Button("확인") {
                    message = "확인"
                }
                Button("취소", role: .cancel, action: {
                    message = "취소"
                })
                Button("삭제", role: .destructive, action: {
                    message = "삭제"
                })
            } message: {
                Text("조심하세요!")
            }
        }
    }
}

struct Alert_Tutorial_Preview: PreviewProvider {
    static var previews: some View {
        Alert_Tutorial()
    }
}
