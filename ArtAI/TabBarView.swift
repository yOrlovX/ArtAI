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
            Text("Tab 1")
                .tag(1)
            Text("Tab 2")
                .tag(2)
            Text("Tab 3")
                .tag(3)
            Text("Tab 4")
                .tag(4)
            Text("Tab 5")
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
