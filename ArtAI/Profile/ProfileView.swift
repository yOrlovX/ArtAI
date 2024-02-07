//
//  ProfileView.swift
//  ArtAI
//
//  Created by Yaroslav Orlov on 05.02.2024.
//

import SwiftUI

struct ProfileView: View {
    @State private var selectedCategory: PhotoCategories = .created
    let itemHeight = UIScreen.main.bounds.width / 2.3 - 30
    let columns = [GridItem(.adaptive(minimum: 100), spacing: 10), GridItem(.adaptive(minimum: 100))]
    
    var gridImages = [1,2,3,4,5,6]
    
    init() {
        UISegmentedControl.appearance().selectedSegmentTintColor = UIColor(named: "light_green")
        UISegmentedControl.appearance().setTitleTextAttributes([.foregroundColor: UIColor.black], for: .selected)
        UISegmentedControl.appearance().setTitleTextAttributes([.foregroundColor: UIColor.green], for: .normal)
    }
    var body: some View {
        ZStack {
            Color.black
                .ignoresSafeArea()
            VStack {
                ScrollView {
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
                            ForEach(PhotoCategories.allCases, id: \.self) { category in
                                Text(category.rawValue)
                                
                            }
                        }
                        .frame(height: 48)
                        .pickerStyle(.segmented)
                        .padding(.horizontal, 24)
                        
                        LazyVGrid(columns: columns, spacing: 10) {
                            ForEach(gridImages.indices, id: \.self) { index in
                                Rectangle()
                                    .frame(height: index % 3 == 1 ? itemHeight * 2 : itemHeight)
                                    .foregroundColor(.green)
                            }
                        }
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
