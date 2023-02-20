//
//  Button.swift
//  Mastering_SwiftUI_Example
//
//  Created by 김태성 on 2023/02/12.
//

import Foundation
import SwiftUI

struct Button_Tutorial: View {
    @State private var value = Int.random(in: 1...100)
    
    var body: some View {
        VStack {
            
            Spacer()
            
            Text("RandomNumber")
                .font(.largeTitle)
            
            Text("\(value)")
                .font(.system(size: 200))
            
            Spacer()
            
            Button(action: generate, label: {
                Image(systemName: "repeat")
                Text("Generate")
            })
            .padding()
            .background(.blue)
            .foregroundColor(.white)
            .cornerRadius(20)
            
            
        }.frame(maxWidth: .infinity, maxHeight: .infinity)
    }
    
    private func generate() {
        value = Int.random(in: 1...100)
    }
}


struct Button_Tutorial_Preview: PreviewProvider {
    static var previews: some View {
        Button_Tutorial()
    }
}
