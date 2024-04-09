//
//  ListItem.swift
//
//
//  Created by Bishow Gurung on 19/3/2024.
//

import SwiftUI

public struct ListItem: View {
    @Environment(\.colorScheme) var scheme: ColorScheme
    let leftImageSrc: ImageSource
    let title: String
    let description: String
    let rightSystemImage: String
    
    public init(leftImageSrc: ImageSource, title: String, description: String, rightSystemImage: String) {
        self.leftImageSrc = leftImageSrc
        self.title = title
        self.description = description
        self.rightSystemImage = rightSystemImage
    }
    
    public var body: some View {
        CardView {
            HStack(spacing: Dimension.points16) {
                
                switch leftImageSrc {
                case .system(let imageName):
                    Image(systemName: imageName)
                        .aspectRatio(contentMode: .fit)
                        .frame(width: Dimension.points4,
                               height:  Dimension.points4)
                        .foregroundColor(Color.defaultIconTint.value(scheme))
                case .remote(let uRLStr):
                    AsyncCachedImage(url: URL(string: uRLStr),
                            content: { image in
                                image.resizable()
                                     .aspectRatio(contentMode: .fill)
                                    
                            },
                            placeholder: {
                                Image(systemName: "photo.on.rectangle.angled")
                                    .aspectRatio(contentMode: .fit)
                                    .foregroundColor(Color.defaultIconTint.value(scheme))
                            }
                        )
                    .frame(maxWidth: Dimension.points32, maxHeight: Dimension.points32)
                    .cornerRadius(Dimension.points4)
                }
                
                VStack(alignment: .leading, spacing: Dimension.points4) {
                    Text(title)
                        .fontStyle(with: .body)
                    Text(description)
                        .fontStyle(with: .caption)
                        .foregroundColor(Color.descriptionText.value(scheme))
                }
                
                Spacer()
                Image(systemName: rightSystemImage)
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

extension ListItem {
    public enum ImageSource {
        case system(String)
        case remote(String)
    }
}

public struct FooterItem<Content: View>: View {
    @Environment(\.colorScheme) var scheme: ColorScheme
    let content: () -> Content
    
    public init(@ViewBuilder content: @escaping () -> Content) {
        self.content = content
    }
    public var body: some View {
        content()
            .foregroundColor(Color.defaultText.value(scheme))
            .listRowInsets(EdgeInsets(top: Dimension.points4, leading: 0.0, bottom: Dimension.points4, trailing: 0.0))
            .listRowSeparator(.hidden)
            .listRowBackground(SwiftUI.Color.clear)
    }
}

