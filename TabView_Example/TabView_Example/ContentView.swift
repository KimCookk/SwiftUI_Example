//
//  ContentView.swift
//  TabView_Example
//
//  Created by 김태성 on 2023/02/15.
//

import SwiftUI

struct ContentView: View {
    
    @State private var tabSelection = 3
    
    var body: some View {
        TabView(selection: $tabSelection) {
            BlueTwoView()
                .tabItem {
                    Image(systemName: "person")
                    Text("Person")
                }
                .tag(1)
            RedOneView()
                .tabItem {
                    Image(systemName: "house")
                    Text("Home")
                }.tag(2)
            
            GreenThreeView()
                .tabItem {
                    Image(systemName: "bag")
                    Text("Cart")
                }.tag(3)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
