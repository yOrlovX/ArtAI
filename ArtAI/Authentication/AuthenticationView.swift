//
//  AuthenticationView.swift
//  ArtAI
//
//  Created by Yaroslav Orlov on 05.02.2024.
//

import SwiftUI

struct AuthenticationView: View {
    @State private var showCreateAccountSheet = false
    
    @EnvironmentObject var router: Router
    
    var body: some View {
        ZStack(alignment: .top) {
            Color.black
                .ignoresSafeArea()
            VStack {
                Image("logo")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 150, height: 55)
                ZStack {
                    Image("login_image")
                        .resizable()
                        .scaledToFill()
                        .opacity(0.6)
                        .frame(height: UIScreen.main.bounds.height * 0.6)
                    VStack {
                        Spacer()
                        Text("Create \nartwork \nwith AI")
                            .font(.system(size: 48))
                            .multilineTextAlignment(.center)
                            .foregroundColor(Colors.lightGreen)
                        Button(action: { showCreateAccountSheet = true }) {
                            Text("Create an Account")
                                .modifier(PrimaryButtonModifier())
                        }
                        Button(action: { router.push(.login)}) {
                            Text("Login")
                                .modifier(ClearButtonModifier())
                        }
                    }
                }
            }
        }
        .sheet(isPresented: $showCreateAccountSheet) {
            CreateAccountSheetView(showCreateAccountSheet: $showCreateAccountSheet)
                .presentationDetents([.medium])
        }
    }
}

struct AuthenticationView_Previews: PreviewProvider {
    static var previews: some View {
        AuthenticationView()
    }
}
