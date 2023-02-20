//
//  HStack.swift
//  Mastering_SwiftUI_Example
//
//  Created by 김태성 on 2023/02/10.
//

import Foundation
import SwiftUI

struct HStack_Tutorials: View {
    var body: some View {
        HStack(alignment: .top, spacing: 20) {
            heart
            club
            spade
            diamond
        }
        //.frame(width: 300, height: 300)
        .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
    
    private var heart: some View {
        Image(systemName: "suit.heart.fill")
            .resizable()
            .frame(width: 50, height: 50)
            .foregroundColor(.red)
    }
    
    private var club: some View {
        Image(systemName: "suit.club.fill")
            .resizable()
            .frame(width: 100, height: 100)
            .foregroundColor(.black)
    }
    
    private var spade: some View {
        Image(systemName: "suit.spade.fill")
            .resizable()
            .frame(width: 50, height: 50)
            .foregroundColor(.black)
    }
    
    private var diamond: some View {
        Image(systemName: "suit.diamond.fill")
            .resizable()
            .frame(width: 50, height: 50)
            .foregroundColor(.red)
    }
}

struct HStack_Tutorials_Previews: PreviewProvider {
    static var previews: some View {
        HStack_Tutorials()
    }
}
