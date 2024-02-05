//
//  ProfileView.swift
//  ArtAI
//
//  Created by Yaroslav Orlov on 05.02.2024.
//

import SwiftUI

struct ProfileView: View {
    @State private var selectedCategory = "Created"
    let categories = ["Created", "Liked"]
    
    var body: some View {
        ZStack {
            Color.black
                .ignoresSafeArea()
            VStack {
                HStack {
                    Spacer()
                    Image(systemName: "gearshape")
                        .resizable()
                        .frame(width: 36, height: 36)
                        .foregroundColor(.white)
                        .padding(.horizontal, 24)
                }
                Circle()
                    .foregroundColor(.white)
                    .frame(width: 102, height: 102)
                
                HStack(spacing: 32) {
                    Text("1 Followers")
                        .foregroundColor(.white)
                    Text("1 Following")
                        .foregroundColor(.white)
                }
                Picker("", selection: $selectedCategory) {
                    ForEach(categories, id: \.self) { category in
                        Text(category)
                            
                    }
                }
                .pickerStyle(.segmented)
                .colorMultiply(selectedCategory == "Created" ? Colors.lightGreen : .red)
                
            }
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
