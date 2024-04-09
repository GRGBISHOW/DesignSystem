//
//  AsyncCachedImage.swift
//
//
//  Created by Bishow Gurung on 9/4/2024.
//

import Foundation
import SwiftUI

public struct AsyncCachedImage<Content, AnotherContent>: View where Content: View, AnotherContent: View {

    private let url: URL?
    private let contentImage: ((Image) -> Content)
    private let placeholder: (() -> AnotherContent)
    
    public init(url: URL?,
         scale: CGFloat = 1,
         @ViewBuilder content: @escaping (Image) -> Content,
         @ViewBuilder placeholder: @escaping () -> AnotherContent
    ) {
        self.url = url
        self.contentImage = content
        self.placeholder = placeholder
    }

    public var body: some View {
        if let cached = ImageCache[url] {
            contentImage(cached)
        } else{
            AsyncImage(url: url,
                       content: { cacheAndRender(image: $0) },
                       placeholder: placeholder)
        }
    }

    private func cacheAndRender(image: Image) -> some View {
        ImageCache[url] = image
        return contentImage(image)
    }
}

private class ImageCache {
    static private var cache: [URL: Image] = [:]
    static subscript(url: URL?) -> Image? {
        get {
            guard let url else { return nil }
            return ImageCache.cache[url]
        }
        set {
            guard let url else { return }
            ImageCache.cache[url] = newValue
        }
    }
}

