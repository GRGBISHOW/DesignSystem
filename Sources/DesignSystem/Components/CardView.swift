//
//  CardView.swift
//
//
//  Created by Bishow Gurung on 18/3/2024.
//

import SwiftUI

public struct CardView<Content: View>: View {
    @Environment(\.colorScheme) var scheme: ColorScheme
    let content: () -> Content
    
    public init(@ViewBuilder content: @escaping () -> Content) {
        self.content = content
    }
    
    public var body: some View {
        content()
            .padding(Spacing.regular)
            .background(Color.defaultCardViewBackground.value(scheme))
            .cornerRadius(Dimension.xsmall.width)
    }
}

