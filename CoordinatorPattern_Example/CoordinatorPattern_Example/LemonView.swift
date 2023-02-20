//
//  LemonView.swift
//  CoordinatorPattern_Example
//
//  Created by 김태성 on 2023/02/19.
//

import SwiftUI

struct LemonView: View {
    @EnvironmentObject private var coordinator: Coordinator
    
    var body: some View {
        NavigationStack(root: {
            List {
                
                Button("Present 🫒") {
                    coordinator.present(fullScreenCover: .olive)
                }
                
                Button("Dismiss") {
                    coordinator.dismissSheet()
                }
            }.navigationTitle("Lemon 🍋")
        })
    }
}

struct LemonView_Previews: PreviewProvider {
    static var previews: some View {
        LemonView()
    }
}
