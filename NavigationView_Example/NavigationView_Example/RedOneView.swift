//
//  ContentView.swift
//  NavigationView_Example
//
//  Created by 김태성 on 2023/02/15.
//

import SwiftUI

struct RedOneView: View {
    var body: some View {
        NavigationView {
            VStack {
                CircleNumberView(color: .red, number: 1)
                    .offset(y: -60)
                
                NavigationLink(destination: BlueTwoView(), label: {
                    Text("Next Screen")
                })
            }
            .navigationTitle("Red One")
            .navigationBarTitleDisplayMode(.large)

        }
    }
}

struct BlueTwoView: View {
    @Environment(\.presentationMode) var presentation

    var body: some View {
        VStack {
            CircleNumberView(color: .blue, number: 2)
                .navigationBarHidden(true)
                .offset(y: -60)
                
            NavigationLink(destination: GreenThreeView(), label: {
                Text("Next Screen")
            })
            
            
            
            Button("Back", action: {
                self.presentation.wrappedValue.dismiss()
            }).offset(y: 20)
            
            
        }

    }
}

struct GreenThreeView: View {
    @Environment(\.presentationMode) var presentation

    var body: some View {
        VStack {
            CircleNumberView(color: .green, number: 3)
                .navigationBarHidden(true)
                .offset(y: -60)
            
            NavigationLink(destination: Text("Destination"), label: {
                Text("Next Screen")
            })
            
            Button("Back", action: {
                self.presentation.wrappedValue.dismiss()
            }).offset(y: 20)
        }
    }
}

struct CircleNumberView: View {
    
    var color: Color
    var number: Int
    
    var body: some View {
        ZStack {
            Circle()
                .frame(width: 200, height: 200)
                .foregroundColor(color)
            
            Text("\(number)")
                .foregroundColor(.white)
                .font(.system(size: 70, weight: .bold))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        RedOneView()
    }
}
