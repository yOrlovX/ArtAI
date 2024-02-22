//
//  CompleteProfileView.swift
//  ArtAI
//
//  Created by Yaroslav Orlov on 07.02.2024.
//

import SwiftUI

struct CompleteProfileView: View {
    @State private var nickName = ""
    @State private var birthDate = Date()
    
    var body: some View {
        ZStack {
            Color.black
                .ignoresSafeArea()
            VStack {
                photoSection
                userInfoSection
                Spacer()
                Button(action: {}) {
                    Text("Complete Profile")
                        .modifier(PrimaryButtonModifier())
                }
            }
        }
        .toolbar {
            Button(action: {  }) {
                Image(systemName: "xmark")
                    .resizable()
                    .frame(width: 18, height: 18)
                    .foregroundColor(.white)
            }
        }
    }
}

extension CompleteProfileView {
    private var userInfoSection: some View {
        VStack(alignment: .leading, spacing: 16) {
            Text("Nick Name")
                .foregroundColor(.white)
                .font(.system(size: 14, weight: .medium))
                .padding(.horizontal, 24)
            TextField("", text: $nickName, prompt: Text("Nick Name")
                .foregroundColor(.gray)
                .font(.system(size: 14, weight: .medium))
                .foregroundColor(.red))
            .padding()
            .modifier(TextFieldModifiers())
            
            Text("Birth Date")
                .foregroundColor(.white)
                .font(.system(size: 14, weight: .medium))
                .padding(.horizontal, 24)
            HStack {
                DatePicker(selection: $birthDate, in: ...Date.now, displayedComponents: .date) {
                }
                .colorInvert()
                .colorMultiply(Color.gray)
                .labelsHidden()
                Spacer()
            }
            .modifier(TextFieldModifiers())
        }
    }
    
    private var photoSection: some View {
        VStack(spacing: 10) {
            Circle()
                .foregroundColor(.white)
                .frame(width: 102, height: 102)
            Text("Upload photo")
                .foregroundColor(.white)
                .font(.system(size: 16, weight: .semibold))
        }
    }
}

struct CompleteProfileView_Previews: PreviewProvider {
    static var previews: some View {
        CompleteProfileView()
    }
}
