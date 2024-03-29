//
//  CreateAccountView.swift
//  ArtAI
//
//  Created by Yaroslav Orlov on 05.02.2024.
//

import SwiftUI

struct CreateAccountView: View {
    @State private var email = ""
    @State private var password = ""
    @State private var agreeTerms = false
    @State private var showCreatingAccountState = false
    
    @EnvironmentObject var router: Router
    
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        ZStack {
            Color.black
                .ignoresSafeArea()
            VStack(alignment: .leading, spacing: 20) {
                Text("Create a ART.AI account to gain access to more creation tools, publish & curate your AI generated art!")
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
                
                Toggle(isOn: $agreeTerms) {}
                    .toggleStyle(ToggleCheckBoxStyle())
                    .padding(.horizontal, 24)
                Spacer()
                Button(action: { showCreatingAccountState = true
                    DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                        dismiss()
                        router.push(.completeProfile)
                    }
                }) {
                    Text("Create an Account")
                        .modifier(PrimaryButtonModifier())
                }
            }
            .padding(.top, 20)
        }
        .fullScreenCover(isPresented: $showCreatingAccountState) {
            creatingAccountState
        }
        .toolbar {
            ToolbarItem(placement: .navigationBarLeading) {
                HStack {
                    Text("Create an Account")
                        .foregroundColor(Colors.navTitleColor)
                        .font(.system(size: 24, weight: .medium))
                        .padding(.horizontal, 24)
                }
            }
        }
    }
}

extension CreateAccountView {
    private var creatingAccountState: some  View {
        ZStack {
            Color.black
                .ignoresSafeArea()
            VStack {
                Spacer()
                ProgressView()
                    .controlSize(.large)
                    .tint(Colors.lightGreen)
                Spacer()
                Image("logo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 112, height: 42)
            }
        }
    }
}

struct CreateAccountView_Previews: PreviewProvider {
    static var previews: some View {
        CreateAccountView()
    }
}
