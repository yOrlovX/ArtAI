//
//  CreateAccountSheetView.swift
//  ArtAI
//
//  Created by Yaroslav Orlov on 05.02.2024.
//

import SwiftUI

struct CreateAccountSheetView: View {
    @Binding var showCreateAccountSheet: Bool
    
    var body: some View {
        ZStack {
            Color.black
                .ignoresSafeArea()
            VStack(alignment: .center, spacing: 20) {
                Rectangle()
                    .foregroundColor(.white)
                    .frame(width: 72, height: 5)
                    .padding(.top, 8)
                VStack(alignment: .leading, spacing: 16) {
                    Text("Create an Account")
                        .font(.system(size: 24, weight: .medium))
                        .foregroundColor(.white)
                        .padding(.horizontal, 24)
                    Text("Create a ART.AI account to gain access to more creation tools, publish & curate your AI generated art!")
                        .font(.system(size: 14, weight: .medium))
                        .foregroundColor(.gray)
                        .padding(.horizontal, 24)
                    Button(action: {
                       showCreateAccountSheet = false
                    }) {
                        Text("Create an Account")
                            .modifier(PrimaryButtonModifier())
                    }
                    Button(action: {}) {
                        HStack(spacing: 12) {
                            Image("google")
                                .resizable()
                                .frame(width: 20, height: 20)
                            Text("Continue with Google")
                            
                        }
                        .modifier(GoogleButtonModifier())
                    }
                    Button(action: {}) {
                        HStack(spacing: 12) {
                            Image("apple")
                                .resizable()
                                .frame(width: 20, height: 20)
                            Text("Continue with Apple")
                            
                        }
                        .modifier(AppleButtonModifier())
                    }
                    Text("By registering, you confirm that you accept our Terms of Use and Privacy Policy.")
                        .font(.system(size: 12, weight: .regular))
                        .foregroundColor(.gray)
                        .multilineTextAlignment(.center)
                }
            }
        }
    }
}

struct CreateAccountSheetView_Previews: PreviewProvider {
    static var previews: some View {
        CreateAccountSheetView(showCreateAccountSheet: .constant(false))
    }
}
