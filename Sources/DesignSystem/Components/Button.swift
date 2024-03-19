//
//  Button.swift
//
//
//  Created by Bishow Gurung on 18/3/2024.
//

import Foundation
import SwiftUI

public struct Button: View {
    @Environment(\.colorScheme) var scheme: ColorScheme
    let title: String
    let type: ButtonType
    let isMaxWidth: Bool
    let action: () -> Void
    
    public init(title: String, type: ButtonType, isMaxWidth: Bool = false,  action: @escaping () -> Void ) {
        self.title = title
        self.action = action
        self.type = type
        self.isMaxWidth = isMaxWidth
    }
    
    public var body: some View {
        SwiftUI.Button(title) {
            action()
        }
        .buttonStyle(ButtonStyle(type: type, isMaxWidth: isMaxWidth, scheme: scheme))
    }
}



struct ButtonStyle: SwiftUI.ButtonStyle {
    
    let type: ButtonType
    let isMaxWidth: Bool
    let scheme: ColorScheme
    
    func makeBody(configuration: Configuration) -> some View {
        
        return configuration
            .label
            .modifier(TextModifier(style: .headline))
            .padding(Dimension.points16)
            .frame(height: type.size.height)
            .frame(maxWidth: isMaxWidth ? .infinity : type.size.width)
            .foregroundColor(type.textColor.value(scheme))
            .background(type.background.value(scheme))
            .cornerRadius(type.cornerRadius)
            .overlay(
                RoundedRectangle(cornerRadius: type.cornerRadius)
                    .stroke(type.borderColor.value(scheme), lineWidth: type.borderWidth)
            )
    }
}



public enum ButtonType {
    case primary
    case secondary
}

extension ButtonType {
    var size: CGSize {
        CGSize(width: 300, height: 48.0)
    }
    
    var cornerRadius: CGFloat {
        Dimension.points8
    }
    
    var textColor: Color {
        switch self {
        case .primary:
            Color.primaryActionText
        case .secondary:
            Color.secondaryActionText
        }
    }
    
    var background: Color {
        switch self {
        case .primary:
            Color.primaryActionBackground
        case .secondary:
            Color.secondaryActionBackground
        }
    }
    
    var borderColor: Color {
        switch self {
        case .primary:
            Color.primaryActionBorder
        case .secondary:
            Color.secondaryActionBorder
        }
    }
    
    var borderWidth: CGFloat {
        1.0
    }
}
