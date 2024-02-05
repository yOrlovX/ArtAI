//
//  ViewModifiers.swift
//  ArtAI
//
//  Created by Yaroslav Orlov on 05.02.2024.
//

import SwiftUI

struct PrimaryButtonModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .foregroundColor(.black)
            .font(.system(size: 16, weight: .semibold))
            .frame(maxWidth: .infinity, maxHeight: 48)
            .background(Colors.lightGreen)
            .cornerRadius(4)
            .padding(.horizontal, 24)
            .padding(.top, 20)
    }
}

struct ClearButtonModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .foregroundColor(Colors.lightGreen)
            .font(.system(size: 16, weight: .semibold))
            .frame(maxWidth: .infinity, maxHeight: 48)
            .overlay(
                RoundedRectangle(cornerRadius: 4)
                    .stroke(Colors.lightGreen, lineWidth: 2)
            )
            .background(.clear)
            .padding(.horizontal, 24)
            .padding(.top, 20)
    }
}

struct GoogleButtonModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .foregroundColor(.black)
            .font(.system(size: 16, weight: .semibold))
            .frame(maxWidth: .infinity, maxHeight: 48)
            .background(.white)
            .padding(.horizontal, 24)
            .padding(.top, 20)
    }
}

struct AppleButtonModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .foregroundColor(.black)
            .font(.system(size: 16, weight: .semibold))
            .frame(maxWidth: .infinity, maxHeight: 48)
            .background(.white)
            .padding(.horizontal, 24)
            .padding(.top, 20)
    }
}
