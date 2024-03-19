//
//  ListItem.swift
//
//
//  Created by Bishow Gurung on 19/3/2024.
//

import SwiftUI

public struct ListItem: View {
    let leftImage: String
    let title: String
    let description: String
    let rightImage: String
    
    public init(leftImage: String, title: String, description: String, rightImage: String) {
        self.leftImage = leftImage
        self.title = title
        self.description = description
        self.rightImage = rightImage
    }
    
    public var body: some View {
        CardView {
            HStack(spacing: Dimension.points16) {
                Image(systemName: leftImage)
                    .aspectRatio(contentMode: .fit)
                    .frame(width: Dimension.points4,
                           height: Dimension.points4)
                VStack(alignment: .leading, spacing: Dimension.points4) {
                    Text(title)
                        .fontStyle(with: .body)
                    Text(description)
                        .fontStyle(with: .caption)
                }
                
                Spacer()
                Image(systemName: rightImage)
                    .aspectRatio(contentMode: .fit)
                    .frame(width: Dimension.points4,
                           height:  Dimension.points4)
            }
        }
        .listRowInsets(EdgeInsets(top: Dimension.points4, leading: 0.0, bottom: Dimension.points4, trailing: 0.0))
        .listRowSeparator(.hidden)
        .listRowBackground(SwiftUI.Color.clear)
        
    }
}

