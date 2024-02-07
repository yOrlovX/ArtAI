//
//  LoginView.swift
//  ArtAI
//
//  Created by Yaroslav Orlov on 07.02.2024.
//

import SwiftUI

struct LoginView: View {
    @State private var email = ""
    @State private var password = ""
    
    var body: some View {
        ZStack {
            Color.black
                .ignoresSafeArea()
            VStack(alignment: .leading, spacing: 20) {
                Spacer()
                Text("Login")
                    .foregroundColor(.white)
                    .font(.system(size: 24, weight: .medium))
                    .padding(.horizontal, 24)
                Text("Enter your registered email & password.")
                    .foregroundColor(.gray)
                    .font(.system(size: 14, weight: .medium))
                    .padding(.horizontal, 24)
                Text("Email")
                    .foregroundColor(.gray)
                    .font(.system(size: 14, weight: .medium))
                    .padding(.horizontal, 24)
                TextField("", text: $email, prompt: Text("Email")
                    .foregroundColor(.gray)
                    .font(.system(size: 14, weight: .medium))
                    .foregroundColor(.red))
                .padding()
                .modifier(TextFieldModifiers())
                Text("Password")
                    .foregroundColor(.gray)
                    .font(.system(size: 14, weight: .medium))
                    .padding(.horizontal, 24)
                TextField("", text: $password, prompt: Text("Email")
                    .foregroundColor(.gray)
                    .font(.system(size: 14, weight: .medium))
                    .foregroundColor(.red))
                .padding()
                .modifier(TextFieldModifiers())
                
                Spacer()
                Spacer()
                Button(action: {}) {
                    Text("Login")
                        .modifier(PrimaryButtonModifier())
                }
            }
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}