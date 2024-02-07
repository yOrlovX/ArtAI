//
//  CustomTabView.swift
//  ArtAI
//
//  Created by Yaroslav Orlov on 07.02.2024.
//

import SwiftUI

struct CustomTabView: View {
    @Binding var tabSelection: Int
    @Namespace private var animationNamespace
    
    let tabItems = ["house","magnifyingglass","plus.circle","bell","person.crop.circle"]
    
    var body: some View {
        ZStack {
            Capsule()
                .frame(height: 72)
            
            HStack(spacing: 25) {
                ForEach(0..<5) { index in
                    Button(action: { tabSelection = index + 1 }) {
                        Image(systemName: tabItems[index])
                            .resizable()
                            .frame(width: 24, height: 24)
                            .foregroundColor(index + 1 == tabSelection ? Colors.lightGreen : .gray)
                            .padding(8)
                            
                    }
                }
            }
        }
        .padding(.horizontal)
    }
}

struct CustomTabView_Previews: PreviewProvider {
    static var previews: some View {
        CustomTabView(tabSelection: .constant(1))
            .previewLayout(.sizeThatFits)
    }
}
