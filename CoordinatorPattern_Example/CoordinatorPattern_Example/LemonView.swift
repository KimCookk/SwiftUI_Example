//
//  LemonView.swift
//  CoordinatorPattern_Example
//
//  Created by κΉνμ± on 2023/02/19.
//

import SwiftUI

struct LemonView: View {
    @EnvironmentObject private var coordinator: Coordinator
    
    var body: some View {
        NavigationStack(root: {
            List {
                
                Button("Present π«") {
                    coordinator.present(fullScreenCover: .olive)
                }
                
                Button("Dismiss") {
                    coordinator.dismissSheet()
                }
            }.navigationTitle("Lemon π")
        })
    }
}

struct LemonView_Previews: PreviewProvider {
    static var previews: some View {
        LemonView()
    }
}
