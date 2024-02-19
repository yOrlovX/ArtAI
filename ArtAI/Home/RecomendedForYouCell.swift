//
//  RecomendedForYouCell.swift
//  ArtAI
//
//  Created by Yaroslav Orlov on 07.02.2024.
//

import SwiftUI

struct RecomendedForYouCell: View {
    let data: RecomendedForYouCellModel
    
    var body: some View {
        ZStack {
            Image(data.image)
                .resizable()
                .scaledToFill()
                .frame(width: 243, height: 228)
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
                                    .font(.system(size: 14, weight: .medium))
                                    .foregroundColor(.white)
                                
                                Image(systemName: "rays")
                                    .frame(width: 18, height: 18)
                                    .foregroundColor(Colors.lightGreen)
                                    .padding(4)
                            }
                            .background(.black)
                            .cornerRadius(16)
                            Spacer()
                            Image(systemName: "heart")
                                .frame(width: 18, height: 18)
                                .foregroundColor(Colors.lightGreen)
                        }
                        Spacer()
                        Text(data.prompt)
                            .font(.system(size: 12, weight: .medium))
                            .foregroundColor(.white)
                    }
                    .padding(8)
                }
        }
        .frame(maxWidth: 243, maxHeight: 228)
    }
}

struct RecomendedForYouCell_Previews: PreviewProvider {
    static var previews: some View {
        RecomendedForYouCell(data: RecomendedForYouCellModel(image: "2", prompt: "Create a dark and mysterious illustration of a city for rusia, the ttrpg created by Critical"))
            .previewLayout(.sizeThatFits)
    }
}


struct RecomendedForYouCellModel: Identifiable {
    let id = UUID()
    let image: String
    let prompt: String
    
    static var recomendedData: [RecomendedForYouCellModel] = [
        RecomendedForYouCellModel(image: "1", prompt: "Create a dark and mysterious illustration of a city for rusia, the ttrpg created by Critical"),
        RecomendedForYouCellModel(image: "2", prompt: "Create a dark and mysterious illustration of a city for rusia, the ttrpg created by Critical"),
        RecomendedForYouCellModel(image: "3", prompt: "Create a dark and mysterious illustration of a city for rusia, the ttrpg created by Critical")
    ]
}
