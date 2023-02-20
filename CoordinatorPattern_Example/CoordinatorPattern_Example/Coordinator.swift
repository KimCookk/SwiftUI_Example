//
//  Coordinator.swift
//  CoordinatorPattern_Example
//
//  Created by 김태성 on 2023/02/15.
//

import SwiftUI

enum RootPage: Int, Identifiable {
    case apple = 1, banana = 2
    
    var id: Int {
        self.rawValue
    }
}

enum Page: String, Identifiable {
    case carrot
    
    var id: String {
        self.rawValue
    }
}


enum Sheet: String, Identifiable {
    case lemon
    
    var id: String {
        self.rawValue
    }
}

enum FullScreenCover: String, Identifiable {
    case olive
    
    var id: String {
        self.rawValue
    }
}

class Coordinator: ObservableObject {
    
    // @ObservableObject 프로토콜 내 @Published Wraper로 인해 변경이 감지되며, 내부적으로 objectWillChange.send() 처리
    // 객체 내부의 프로퍼티가 아닌 View 내부 프로퍼티에선 @State라고 생각하면 될듯
    @Published var applePath: NavigationPath
    @Published var bananaPath: NavigationPath
    @Published var sheet: Sheet?
    @Published var fullScreenCover: FullScreenCover?
    @Published var tabSelection: Int
    
    var link: [RootPage: NavigationPath] = [:]
    
    init(_ initTabSelection: RootPage) {
        self.applePath = NavigationPath()
        self.bananaPath = NavigationPath()
        self.sheet = nil
        self.fullScreenCover = nil
        self.tabSelection = initTabSelection.rawValue
    }
    
    
    func push(_ page: Page) {
        if let rootPage = RootPage.init(rawValue: tabSelection) {
            switch rootPage {
            case .apple:
                applePath.append(page)
            case .banana:
                bananaPath.append(page)
            }
        }
    }
    
    func present(sheet: Sheet) {
        self.sheet = sheet
    }
    
    func present(fullScreenCover: FullScreenCover) {
        self.fullScreenCover = fullScreenCover
    }
    
    func pop() {
        if let rootPage = RootPage.init(rawValue: tabSelection) {
            switch rootPage {
            case .apple:
                applePath.removeLast()
            case .banana:
                bananaPath.removeLast()
            }
        }
    }
    
    func popToRoot() {
        if let rootPage = RootPage.init(rawValue: tabSelection) {
            switch rootPage {
            case .apple:
                if(applePath.isEmpty == false) {
                    applePath.removeLast()
                }
            case .banana:
                if(bananaPath.isEmpty == false) {
                    bananaPath.removeLast()
                }
            }
        }
    }
    
    func dismissSheet() {
        self.sheet = nil
    }
    
    func dismissFullScreenCover() {
        self.fullScreenCover = nil
    }
    
    // @ViewBuilder 클로저 내부에 View를 생성 할 경우
    // View의 body도 내부적으로는 @ViewBuilder로 되어있음.
    // 아직 느낌은 와닿는 느낌은 없음
    @ViewBuilder
    func build(page: RootPage) -> some View {
        switch page {
        case .apple:
            AppleView()
        case .banana:
            BananaView()
        }
    }
    
    @ViewBuilder
    func build(page: Page) -> some View {
        switch page {
        case .carrot:
            CarrotView()
            
        }
    }
    
    @ViewBuilder
    func build(sheet: Sheet) -> some View {
        switch sheet {
        case .lemon:
            NavigationStack {
                LemonView()
            }
        }
    }
    
    @ViewBuilder
    func build(fullScreenCover: FullScreenCover) -> some View {
        switch fullScreenCover {
        case .olive:
            NavigationStack {
                OliveView()
            }
        }
    }
    
}
