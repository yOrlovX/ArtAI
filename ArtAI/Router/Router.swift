//
//  Router.swift
//  ArtAI
//
//  Created by Yaroslav Orlov on 23.02.2024.
//

import SwiftUI

final class Router: ObservableObject {
    
    @Published var path: [Route] = []
    
    func push(_ route: Route) {
        path.append(route)
    }
    
    func backToRoot() {
        path.removeAll()
    }
    
    func pop() {
        path.removeLast()
    }
}
