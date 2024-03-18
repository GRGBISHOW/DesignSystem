//
//  ContainerView.swift
//
//
//  Created by Bishow Gurung on 17/3/2024.
//

import SwiftUI

public struct ContainerView<Content: View>: View {
    @Environment(\.colorScheme) var scheme: ColorScheme
    let content: () -> Content
    
    public init(@ViewBuilder content: @escaping () -> Content) {
        self.content = content
    }
    
    public var body: some View {
        content()
            .background(Color.defaultBackground.value(scheme))
    }
}
