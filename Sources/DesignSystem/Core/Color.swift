//
//  SwiftUI.Color.swift
//
//
//  Created by Bishow Gurung on 17/3/2024.
//

import Foundation
import SwiftUI

public enum Color {
    case primary
    case secondary
    
    // layout
    case defaultBackground
    case defaultCardViewBackground
    
    // Fonts
    case defaultText
    case descriptionText

    // View
    case defaultIconTint
    
     
    
    // actions
    case primaryActionBackground
    case primaryActionText
    case primaryActionBorder
    
    case secondaryActionBackground
    case secondaryActionText
    case secondaryActionBorder
    
    typealias ModeColor = (light: SwiftUI.Color,  dark: SwiftUI.Color)
}


public extension Color {
    private var value: ModeColor {
        switch self {
        case .primary:
            return (ColorToken.orange20, ColorToken.yellow20)
        case .secondary:
            return (ColorToken.yellow40, ColorToken.yellow70)
        case .defaultBackground:
            return (ColorToken.grey10, ColorToken.purple100)
        case .defaultCardViewBackground:
            return (ColorToken.grey30, ColorToken.purple80)
        case .defaultText, .secondaryActionText :
            return(ColorToken.purple90, ColorToken.grey10)
        case .primaryActionBackground, .defaultIconTint:
            return(ColorToken.orange10, ColorToken.yellow40)
        case .primaryActionText:
            return(ColorToken.grey10, ColorToken.purple100)
        case .primaryActionBorder:
            return (ColorToken.grey20, ColorToken.purple20)
        case .secondaryActionBackground:
            return (ColorToken.purple10, ColorToken.purple70)
        case .secondaryActionBorder:
            return (ColorToken.purple10, ColorToken.purple80)
        case .descriptionText:
            return (ColorToken.purple40, ColorToken.purple20)
        }
    }
    
    func value(_ scheme: ColorScheme) -> SwiftUI.Color {
        return scheme == .light ? self.value.light : self.value.dark
    }
}


enum ColorToken {
    
    static let grey10 = SwiftUI.Color(red: 249/255, green: 245/255, blue: 251/255)
    static let grey20 = SwiftUI.Color(red: 238/255,green: 234/255,blue: 244/255)
    static let grey30 = SwiftUI.Color(red: 219/255,green: 213/255,blue: 232/255)
    
    static let purple10 = SwiftUI.Color(red: 184/255,green: 184/255,blue: 220/255)
    static let purple20 = SwiftUI.Color(red: 160/255,green: 147/255,blue: 188/255)
    static let purple30 = SwiftUI.Color(red: 161/255,green: 124/255,blue: 184/255)
    static let purple40 = SwiftUI.Color(red: 149/255,green: 108/255,blue: 174/255)
    static let purple50 = SwiftUI.Color(red: 135/255,green: 91/255,blue: 168/255)
    static let purple60 = SwiftUI.Color(red: 114/255,green: 78/255,blue: 158/255)
    
    static let purple70 = SwiftUI.Color(red: 95/255,green: 64/255,blue: 153/255)
    static let purple80 = SwiftUI.Color(red: 74/255,green: 42/255,blue: 151/255)
    static let purple90 = SwiftUI.Color(red: 43/255,green: 27/255,blue: 83/255)
    static let purple100 = SwiftUI.Color(red: 22/255, green: 14/255, blue: 45/255)
    
    static let yellow10 = SwiftUI.Color(red: 254/255, green: 250/255, blue: 216/255)
    static let yellow20 = SwiftUI.Color(red: 253/255,green: 247/255,blue: 174/255)
    static let yellow30 = SwiftUI.Color(red: 252/255,green: 240/255,blue: 135/255)
    static let yellow40 = SwiftUI.Color(red: 251/255,green: 235/255,blue: 103/255)
    static let yellow50 = SwiftUI.Color(red: 251/255,green: 228/255,blue: 51/255)
    static let yellow60 = SwiftUI.Color(red: 250/255,green: 215/255,blue: 108/255)
    static let yellow70 = SwiftUI.Color(red: 225/255,green: 168/255,blue: 57/255)
    
    
    static let orange10 = SwiftUI.Color(red: 244/255,green: 126/255,blue: 40/255)
    static let orange20 = SwiftUI.Color(red: 233/255,green: 100/255,blue: 9/255)
    static let orange30 = SwiftUI.Color(red: 191/255, green: 77/255, blue: 0/255)
    
    
}
