//
//  TabBarView.swift
//  ArtAI
//
//  Created by Yaroslav Orlov on 07.02.2024.
//

import SwiftUI

struct TabBarView: View {
    @State private var selectedTab = 1
    var body: some View {
        TabView(selection: $selectedTab) {
            HomeView()
                .tag(1)
            Text("Search View")
                .tag(2)
            Text("Generate Image View")
                .tag(3)
            Text("Activity View")
                .tag(4)
            Text("Profile View")
                .tag(5)
        }
        .overlay(alignment: .bottom) {
            CustomTabView(tabSelection: $selectedTab)
        }
    }
}

struct TabBarView_Previews: PreviewProvider {
    static var previews: some View {
        TabBarView()
    }
}
