//
//  ButtonStyles.swift
//  Mastering_SwiftUI_Example
//
//  Created by 김태성 on 2023/02/12.
//

import Foundation
import SwiftUI

struct ButtonStyles_Tutorial: View {
    var body: some View {
        VStack {
            Button("Automatic", action: {})
                .padding()
                .buttonStyle(.automatic)
            
            Button("Plain", action: {})
                .padding()
                .buttonStyle(.plain)
            
            Button("Bordered", action: {})
                .padding()
                .buttonStyle(.bordered)
            
            Button("Bordered Prominent", action: {})
                .padding()
                .buttonStyle(.borderedProminent)
            
            Button("Border Less", action: {})
                .padding()
                .buttonStyle(.borderless)
            
            #if os(tvOS)
            Button("Card", action: {})
                .padding()
                .buttonStyle(.card)
            #endif
        }.tint(.green)
        
    }
}


struct ButtonStyles_Tutorial_Preview: PreviewProvider {
    static var previews: some View {
        ButtonStyles_Tutorial()
    }
}
