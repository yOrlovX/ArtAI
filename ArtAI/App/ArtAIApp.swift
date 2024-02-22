//
//  ArtAIApp.swift
//  ArtAI
//
//  Created by Yaroslav Orlov on 22.01.2024.
//

import SwiftUI

@main
struct ArtAIApp: App {
    
    init() {
        UINavigationBar.appearance().titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white]
        UINavigationBar.appearance().largeTitleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white]
    }
    
    var body: some Scene {
        WindowGroup {
            NavigationStack {
                OnboardingView()
            }
            .tint(.white)
        }
    }
}
