//
//  Font.swift
//
//
//  Created by Bishow Gurung on 17/3/2024.
//

import Foundation
import SwiftUI

public enum Font {
    public enum Style {
        case largeTitle
        case title
        case subtitle
        case headline
        case body
        case caption
        case notes
    }
}

public extension Text {
    func fontStyle (with style: Font.Style) -> Text {
        self.font(style.font)
    }
}

public extension View {
    func fontStyle(with style: Font.Style) -> some View {
        modifier(TextModifier(style: style))
    }
}

struct TextModifier: ViewModifier {
    let style: Font.Style
    func body(content: Content) -> some View {
        content
            .font(style.font)
    }
}

extension Font.Style {
    var font: SwiftUI.Font {
        switch self {
        case .largeTitle:
            FontToken.largeTitle
        case .title:
            FontToken.title
        case .subtitle:
            FontToken.subTitle
        case .headline:
            FontToken.headline
        case .body:
            FontToken.body
        case .caption:
            FontToken.caption
        case .notes:
            FontToken.notes
        }
    }
}


extension Font {
    public static func register() {
        FontToken.FontName.allCases.forEach {
            registerFont(bundle: .module, fontName: $0.rawValue, fontExtension: "ttf")
        }
    }
    
    private static func registerFont(bundle: Bundle, fontName: String, fontExtension: String) {
        guard let fontURL = bundle.url(forResource: fontName, withExtension: fontExtension) else {
                  fatalError("Couldn't find font \(fontName)")
              }

              guard let fontDataProvider = CGDataProvider(url: fontURL as CFURL) else {
                  fatalError("Couldn't load data from the font \(fontName)")
              }

              guard let font = CGFont(fontDataProvider) else {
                  fatalError("Couldn't create font from data")
              }

              var error: Unmanaged<CFError>?
              let success = CTFontManagerRegisterGraphicsFont(font, &error)
              guard success else {
                  print("Error registering font: maybe it was already registered.")
                  return
              }
    }
}


enum FontToken {

    static let largeTitle = SwiftUI.Font.custom(FontName.robotoBlack.rawValue, size: Size.size32.rawValue).weight(.black)
    static let title = SwiftUI.Font.custom(FontName.robotoBlack.rawValue, size: Size.size28.rawValue).weight(.black)
    static let subTitle = SwiftUI.Font.custom(FontName.robotoBold.rawValue, size: Size.size24.rawValue).weight(.bold)
    static let headline = SwiftUI.Font.custom(FontName.robotoMedium.rawValue, size: Size.size24.rawValue).weight(.medium)
    static let body = SwiftUI.Font.custom(FontName.robotoRegular.rawValue, size: Size.size12.rawValue).weight(.regular)
    static let caption = SwiftUI.Font.custom(FontName.robotoRegular.rawValue, size: Size.size10.rawValue).weight(.regular)
    static let notes = SwiftUI.Font.custom(FontName.robotoLight.rawValue, size: Size.size12.rawValue).weight(.light)
    
    
    enum FontName: String, CaseIterable {
        case robotoBlack = "Roboto-Black"
        case robotoBold = "Roboto-Bold"
        case robotoLight = "Roboto-Light"
        case robotoMedium = "Roboto-Medium"
        case robotoRegular = "Roboto-Regular"
        case robotoThin = "Roboto-Thin"
    }
    
    enum Size: CGFloat {
        case size10 = 10.0
        case size12 = 12.0
        case size14 = 14.0
        case size16 = 16.0
        case size18 = 18.0
        case size24 = 24.0
        case size28 = 28.0
        case size32 = 32.0
    }
}
