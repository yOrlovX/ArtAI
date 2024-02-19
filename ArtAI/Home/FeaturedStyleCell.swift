//
//  FeaturedStyleCell.swift
//  ArtAI
//
//  Created by Yaroslav Orlov on 19.02.2024.
//

import SwiftUI

struct FeaturedStyleCell: View {
    let data: FeaturedStyleCellModel
    
    var body: some View {
        ZStack {
            Image(data.image)
                .resizable()
                .scaledToFill()
                .frame(width: 160, height: 110)
                .cornerRadius(4)
                .overlay {
                    Text(data.prompt)
                        .font(.system(size: 14, weight: .medium))
                        .foregroundColor(.white)
                }
        }
        .frame(maxWidth: 160, maxHeight: 110)
    }
}

struct FeaturedStyleCell_Previews: PreviewProvider {
    static var previews: some View {
        FeaturedStyleCell(data: FeaturedStyleCellModel(image: "style2", prompt: "Style 1"))
    }
}

struct FeaturedStyleCellModel: Identifiable {
    let id = UUID()
    let image: String
    let prompt: String
    
    static var featuredStylesData: [FeaturedStyleCellModel] = [
        FeaturedStyleCellModel(image: "style1", prompt: "Style 1"),
        FeaturedStyleCellModel(image: "style2", prompt: "Style 2"),
        FeaturedStyleCellModel(image: "style3", prompt: "Style 3"),
        FeaturedStyleCellModel(image: "style4", prompt: "Style 4")
    ]
}
