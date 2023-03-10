//
//  CarrotView.swift
//  CoordinatorPattern_Example
//
//  Created by κΉνμ± on 2023/02/20.
//

import SwiftUI

struct CarrotView: View {
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
            
            Button("Dismiss") {
                coordinator.pop()
            }
        }.navigationTitle("Carrot π₯")
        
    }
}

struct CarrotView_Previews: PreviewProvider {
    static var previews: some View {
        CarrotView()
    }
}
