//
//  TextFieldModifiers.swift
//  ArtAI
//
//  Created by Yaroslav Orlov on 05.02.2024.
//

import SwiftUI

struct TextFieldModifiers: ViewModifier {
    func body(content: Content) -> some View {
        content
            .foregroundColor(.gray)
            .frame(width: .infinity, height: 48)
            .overlay(
                RoundedRectangle(cornerRadius: 8)
                    .stroke(.gray, lineWidth: 2)
            )
            .padding(.horizontal, 24)
    }
}
