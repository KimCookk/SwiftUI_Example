//
//  AppleView.swift
//  CoordinatorPattern_Example
//
//  Created by κΉνμ± on 2023/02/15.
//

import SwiftUI

struct AppleView: View {
    
    @EnvironmentObject private var coordinator: Coordinator
    
    var body: some View {
        List {
            Button("Carrot π₯") {
                coordinator.push(.carrot)
            }
            
            Button("Present π") {
                coordinator.present(sheet: .lemon)
            }
            
            Button("Present π«") {
                coordinator.present(fullScreenCover: .olive)
            }
        }.navigationTitle("Apple π")
    }
}

struct AppleView_Previews: PreviewProvider {
    static var previews: some View {
        AppleView()
    }
}
