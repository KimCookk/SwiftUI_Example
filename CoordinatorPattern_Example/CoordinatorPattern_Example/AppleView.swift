//
//  AppleView.swift
//  CoordinatorPattern_Example
//
//  Created by 김태성 on 2023/02/15.
//

import SwiftUI

struct AppleView: View {
    
    @EnvironmentObject private var coordinator: Coordinator
    
    var body: some View {
        List {
            Button("Carrot 🥕") {
                coordinator.push(.carrot)
            }
            
            Button("Present 🍋") {
                coordinator.present(sheet: .lemon)
            }
            
            Button("Present 🫒") {
                coordinator.present(fullScreenCover: .olive)
            }
        }.navigationTitle("Apple 🍎")
    }
}

struct AppleView_Previews: PreviewProvider {
    static var previews: some View {
        AppleView()
    }
}
