//
//  ArtAIApp.swift
//  ArtAI
//
//  Created by Yaroslav Orlov on 22.01.2024.
//

import SwiftUI

@main
struct ArtAIApp: App {
    
    var body: some Scene {
        WindowGroup {
            NavigationStack {
                OnboardingView()
            }
            .tint(Colors.navTitleColor)
        }
    }
}
