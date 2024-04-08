//
//  ListView.swift
//
//
//  Created by Bishow Gurung on 19/3/2024.
//

import SwiftUI

public struct ListView<Content: View>: View {
    @Environment(\.colorScheme) var scheme: ColorScheme
    let content: () -> Content
    
    public init(@ViewBuilder content: @escaping () -> Content) {
        self.content = content
    }
    
    public var body: some View {
        List {
            content()
        }
        .scrollIndicators(.hidden)
        .listStyle(.plain)
        .padding(Dimension.points12)
        .scrollContentBackground(.hidden)
        .background(Color.defaultBackground.value(scheme))
        
    }
}
