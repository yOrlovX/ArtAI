//
//  Screen.swift
//  ArtAI
//
//  Created by Yaroslav Orlov on 20.02.2024.
//

import SwiftUI

enum Route: Hashable {
    case authentication
    case login
    case createAccount
    case completeProfile
}

final class Router: ObservableObject {
    static let shared = Router()

    @Published var path = [Route]()
   
//    func showProduct(product: Product) {
//        path.append(.product(product))
//    }

    func showLogin() {
        path.append(.login)
    }
    
    func showCreateAccount() {
        path.append(.createAccount)
    }
    func showCompleteProfile() {
        path.append(.completeProfile)
    }
    
//    func showOrderConfirmation() {
//        path.append(.orderConfirmation)
//    }
    
    func backToRoot() {
        path.removeAll()
    }
    
    func back() {
        path.removeLast()
    }
}


