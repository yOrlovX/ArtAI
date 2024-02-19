//
//  ProfileView.swift
//  ArtAI
//
//  Created by Yaroslav Orlov on 05.02.2024.
//

import SwiftUI

struct ProfileView: View {
    @State private var selectedCategory: PhotoCategories = .created
    
    let columns = [GridItem(.flexible(minimum: 100), spacing: 7), GridItem(.flexible(minimum: 100), spacing: 7)]
    
    init() {
        UISegmentedControl.appearance().selectedSegmentTintColor = UIColor(named: "light_green")
        UISegmentedControl.appearance().setTitleTextAttributes([.foregroundColor: UIColor.black], for: .selected)
        UISegmentedControl.appearance().setTitleTextAttributes([.foregroundColor: UIColor(named: "light_green")], for: .normal)
    }
    
    var body: some View {
        ZStack {
            Color.black
                .ignoresSafeArea()
            VStack {
                ScrollView {
                    VStack(spacing: 24) {
                        HStack {
                            Spacer()
                            Image(systemName: "gearshape")
                                .resizable()
                                .frame(width: 36, height: 36)
                                .foregroundColor(.white)
                                .padding(.horizontal, 24)
                        }
                        Image("avatar")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 102, height: 102)
                        HStack(spacing: 32) {
                            Text("1 Followers")
                                .foregroundColor(.white)
                            Text("1 Following")
                                .foregroundColor(.white)
                        }
                        Picker("", selection: $selectedCategory) {
                            ForEach(PhotoCategories.allCases, id: \.self) { category in
                                Text(category.rawValue)
                                
                            }
                        }
                        .frame(height: 48)
                        .pickerStyle(.segmented)
                        .padding(.horizontal, 24)
                        
                        LazyVGrid(columns: columns, spacing: 7) {
                            ForEach(0..<10, id: \.self) { _ in
                                Rectangle()
                                    .frame(height: 130)
                                    .foregroundColor(Colors.lightGreen)
                                    .cornerRadius(4)
                            }
                        }
                        .padding(.horizontal, 24)
                    }
                }
            }
        }
    }
}

enum PhotoCategories: String, CaseIterable {
    case created = "Created"
    case liked = "Liked"
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}

extension UISegmentedControl {
    override open func didMoveToSuperview() {
        super.didMoveToSuperview()
        self.setContentHuggingPriority(.defaultLow, for: .vertical)
    }
}
