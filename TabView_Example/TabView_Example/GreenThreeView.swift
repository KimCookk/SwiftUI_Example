//
//  RedOneView.swift
//  TabView_Example
//
//  Created by 김태성 on 2023/02/15.
//

import SwiftUI

struct GreenThreeView: View {
    var body: some View {
        ZStack {
            Circle()
                .frame(width: 200, height: 200)
                .foregroundColor(.green)
            
            Text("3")
                .foregroundColor(.white)
                .font(.system(size: 70, weight: .bold))
        }
    }
}

struct GreenThreeView_Previews: PreviewProvider {
    static var previews: some View {
        GreenThreeView()
    }
}
