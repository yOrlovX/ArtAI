//
//  CommunityFeedCell.swift
//  ArtAI
//
//  Created by Yaroslav Orlov on 19.02.2024.
//

import SwiftUI

struct CommunityFeedCell: View {
    let data: CommunityFeedCellModel
    
    var body: some View {
        ZStack {
            Image(data.image)
                .resizable()
                .scaledToFill()
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .cornerRadius(4)
                .overlay {
                    VStack(alignment: .leading) {
                        HStack {
                            HStack {
                                Image("avatar")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 28, height: 28)
                                    .padding(4)
                                Text("HoltHamlet")
                                    .font(.system(size: 12, weight: .medium))
                                    .foregroundColor(.white)
                                
                                Image(systemName: "rays")
                                    .frame(width: 18, height: 18)
                                    .foregroundColor(Colors.lightGreen)
                                    .padding(4)
                            }
                            .background(.black)
                            .cornerRadius(16)
                            Spacer()
                        }
                        Spacer()
                        Text(data.prompt)
                            .font(.system(size: 12, weight: .medium))
                            .foregroundColor(.white)
                    }
                    .padding(8)
                }
        }
    }
}

struct CommunityFeedCellModel: Identifiable, Hashable {
    let id = UUID()
    let image: String
    let prompt: String
    
    static var communityFeedData: [CommunityFeedCellModel] = [
        CommunityFeedCellModel(image: "community1", prompt: ""),
        CommunityFeedCellModel(image: "community2", prompt: ""),
        CommunityFeedCellModel(image: "community3", prompt: ""),
        CommunityFeedCellModel(image: "community4", prompt: ""),
        CommunityFeedCellModel(image: "community5", prompt: ""),
        CommunityFeedCellModel(image: "community6", prompt: ""),
        
    ]
}

struct CommunityFeedCell_Previews: PreviewProvider {
    static var previews: some View {
        CommunityFeedCell(data: CommunityFeedCellModel(image: "community1", prompt: ""))
    }
}
