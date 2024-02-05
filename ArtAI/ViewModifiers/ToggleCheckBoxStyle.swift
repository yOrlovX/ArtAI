//
//  ToggleCheckBoxStyle.swift
//  ArtAI
//
//  Created by Yaroslav Orlov on 05.02.2024.
//

import SwiftUI

struct ToggleCheckBoxStyle: ToggleStyle {
    func makeBody(configuration: Configuration) -> some View {
        Button(action: { configuration.isOn.toggle() }) {
            HStack(spacing: 2) {
                Image(systemName: configuration.isOn ? "checkmark.square" : "square")
                    .resizable()
                    .frame(width: 24,height: 24)
                    .symbolVariant(configuration.isOn ? .fill : .none)
                Text("I agree with")
                    .font(.system(size: 16, weight: .semibold))
                    .foregroundColor(.gray)
                    .padding(.leading, 10)
                Text("Terms and conditions")
                    .font(.system(size: 16, weight: .semibold))
                    .foregroundColor(Colors.lightGreen)
            }
        }
        .tint(.gray)
        
    }
}
