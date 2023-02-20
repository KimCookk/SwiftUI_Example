//
//  OliveView.swift
//  CoordinatorPattern_Example
//
//  Created by 김태성 on 2023/02/19.
//

import SwiftUI

struct OliveView: View {
    @EnvironmentObject private var coordinator: Coordinator
    
    var body: some View {
        NavigationStack(root: {
            List {
                Button("Present 🍋") {
                    coordinator.present(sheet: .lemon)
                }
                
                
                Button("Dismiss") {
                    coordinator.dismissFullScreenCover()
                }
            }.navigationTitle("Olive 🫒")
        })
    }
}

struct OliveView_Previews: PreviewProvider {
    static var previews: some View {
        OliveView()
    }
}
