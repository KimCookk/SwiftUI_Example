//
//  BananaView.swift
//  CoordinatorPattern_Example
//
//  Created by 김태성 on 2023/02/19.
//

import SwiftUI

struct BananaView: View {
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
        }.navigationTitle("Banana 🍌")
        
    }
}

struct BananaView_Previews: PreviewProvider {
    static var previews: some View {
        BananaView()
    }
}
