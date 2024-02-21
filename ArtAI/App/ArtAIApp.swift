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
    
    init() {
        UINavigationBar.appearance().titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white]
        UINavigationBar.appearance().largeTitleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white]
    }
    
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
                        }
                    }
            }
            .navigationBarTitleDisplayMode(.inline)
            .tint(.white)
            .environmentObject(router)
        }
    }
}
