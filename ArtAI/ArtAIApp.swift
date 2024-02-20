//
//  ArtAIApp.swift
//  ArtAI
//
//  Created by Yaroslav Orlov on 22.01.2024.
//

import SwiftUI

@main
struct ArtAIApp: App {
    @ObservedObject var router = Router.shared
    
    var body: some Scene {
        WindowGroup {
            NavigationStack(path: $router.path) {
                OnboardingView()
                    .navigationDestination(for: Route.self) { route in
                        switch route {
                        case .authentication:
                            AuthenticationView()
                        case .login:
                            LoginView()
                        case .createAccount:
                            CreateAccountView()                            
                        }
                    }
            }
            .environmentObject(router)
        }
    }
}
