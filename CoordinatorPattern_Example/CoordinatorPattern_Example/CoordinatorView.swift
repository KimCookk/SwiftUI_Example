//
//  CoordinatorView.swift
//  CoordinatorPattern_Example
//
//  Created by 김태성 on 2023/02/15.
//

import SwiftUI




struct CoordinatorView: View {
    // @StateObject 와 @ObserveredObject 존재
    // 둘의 동작은 비슷하나
    // @StateObject는 View에 의존되지 않아m View 재생성시 해당 객체가 초기화되지 않는다.
    // @ObserveredObject는 View에 의존해 View가 재생성시 해당 객체도 초기화
    @StateObject private var coordinator = Coordinator(.apple)

    var body: some View {
        TabView(selection: $coordinator.tabSelection, content: {
            NavigationStack(path: $coordinator.applePath) {
                coordinator.build(page: .apple)
                    .navigationDestination(for: Page.self) { page in
                        coordinator.build(page: page)
                    }
            }.tabItem{
                Image(systemName: "trophy")
            }.tag(1)
            
            NavigationStack(path: $coordinator.bananaPath) {
                coordinator.build(page: .banana)
                    .navigationDestination(for: Page.self) { page in
                        coordinator.build(page: page)
                    }
            }.tabItem{
                Image(systemName: "house")
            }.tag(2)
        })
        .sheet(item: $coordinator.sheet) { sheet in
            coordinator.build(sheet: sheet)
        }
        .fullScreenCover(item: $coordinator.fullScreenCover) { fullScrrenCover in
            coordinator.build(fullScreenCover: fullScrrenCover)
        }
        .environmentObject(coordinator)
        // static 개념 모든 view에서 접근 가능하도록
    }

}

struct CoordinatorView_Previews: PreviewProvider {
    static var previews: some View {
        CoordinatorView()
    }
}
