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
    
    @EnvironmentObject var router: Router
    
    var body: some View {
        ZStack {
            Color.black
                .ignoresSafeArea()
            VStack(alignment: .leading, spacing: 20) {
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
                Button(action: { router.push(.home) }) {
                    Text("Login")
                        .modifier(PrimaryButtonModifier())
                }
            }
            .padding(.top, 20)
        }
        .toolbar {
            ToolbarItem(placement: .navigationBarLeading) {
                HStack {
                    Text("Login")
                        .foregroundColor(Colors.navTitleColor)
                        .font(.system(size: 24, weight: .medium))
                        .padding(.horizontal, 24)
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
