//
//  CarrotView.swift
//  CoordinatorPattern_Example
//
//  Created by 김태성 on 2023/02/20.
//

import SwiftUI

struct CarrotView: View {
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
            
            Button("Dismiss") {
                coordinator.pop()
            }
        }.navigationTitle("Carrot 🥕")
        
    }
}

struct CarrotView_Previews: PreviewProvider {
    static var previews: some View {
        CarrotView()
    }
}
