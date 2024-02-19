//
//  HomeView.swift
//  ArtAI
//
//  Created by Yaroslav Orlov on 07.02.2024.
//

import SwiftUI

struct HomeView: View {
    let recomendedData = RecomendedForYouCellModel.recomendedData
    let featuredData = FeaturedStyleCellModel.featuredStylesData
    
    var body: some View {
        ZStack {
            Color.black
                .ignoresSafeArea()
            VStack(spacing: 24) {
                ScrollView(.vertical, showsIndicators: false) {
                    userSection
                    imagesForYouSection
                    featuredStylesSection
                }
            }
        }
    }
}

extension HomeView  {
    private var userSection: some View {
        HStack {
            Image("avatar")
                .resizable()
                .scaledToFit()
                .frame(width: 48, height: 48)
            Spacer()
            HStack(spacing: 8) {
                Image(systemName: "rays")
                    .foregroundColor(Colors.lightGreen)
                    .frame(width: 12, height: 12)
                    .padding(.vertical, 8)
                    .padding(.leading, 12)
                Text("Premium")
                    .font(.system(size: 14, weight: .semibold))
                    .foregroundColor(Colors.lightGreen)
                    .padding(.vertical, 8)
                    .padding(.trailing, 12)
            }
            .overlay(
                RoundedRectangle(cornerRadius: 4)
                    .stroke(Colors.lightGreen, lineWidth: 1)
            )
            
            Image(systemName: "bell")
                .resizable()
                .frame(width: 18, height: 18)
                .foregroundColor(.white)
                .padding(9)
                .overlay {
                    Circle()
                        .stroke(.white, lineWidth: 1)
                }
        }
        .padding(.horizontal, 24)
    }
    
    private var imagesForYouSection: some View {
        VStack(spacing: 16) {
            HStack {
                Text("For You")
                    .font(.system(size: 24, weight: .semibold))
                    .foregroundColor(.white)
                Spacer()
                Button(action: {}) {
                    Text("All")
                        .font(.system(size: 14, weight: .semibold))
                        .foregroundColor(.gray)
                }
            }
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 8) {
                    ForEach(recomendedData) { datum in
                        RecomendedForYouCell(data: datum)
                    }
                }
            }
        }
        .padding(.horizontal, 24)
    }
    
    private var featuredStylesSection: some View {
        VStack(spacing: 16) {
            HStack {
                Text("Featured Styles")
                    .font(.system(size: 24, weight: .semibold))
                    .foregroundColor(.white)
                Spacer()
                Button(action: {}) {
                    Text("All")
                        .font(.system(size: 14, weight: .semibold))
                        .foregroundColor(.gray)
                }
            }
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 8) {
                    ForEach(featuredData) { datum in
                        FeaturedStyleCell(data: datum)
                    }
                }
            }
        }
        .padding(.horizontal, 24)
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
