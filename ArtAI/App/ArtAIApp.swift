//
//  ArtAIApp.swift
//  ArtAI
//
//  Created by Yaroslav Orlov on 22.01.2024.
//

import SwiftUI

@main
struct ArtAIApp: App {
    
    @StateObject var router = Router()
    
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
                        case .completeProfile:
                            CompleteProfileView()
                        case .home:
                            TabBarView()
                        }
                    }
            }
            .environmentObject(router)
            .tint(Colors.navTitleColor)
        }
    }
}
