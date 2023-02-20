//
//  RedOneView.swift
//  TabView_Example
//
//  Created by 김태성 on 2023/02/15.
//

import SwiftUI

struct RedOneView: View {
    var body: some View {
        ZStack {
            Circle()
                .frame(width: 200, height: 200)
                .foregroundColor(.red)
            
            Text("1")
                .foregroundColor(.white)
                .font(.system(size: 70, weight: .bold))
        }
    }
}

struct RedOneView_Previews: PreviewProvider {
    static var previews: some View {
        RedOneView()
    }
}
