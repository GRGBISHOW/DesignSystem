//
//  DesignSystemDemoApp.swift
//  DesignSystemDemo
//
//  Created by Bishow Gurung on 19/3/2024.
//
import DesignSystem
import SwiftUI

@main
struct DesignSystemDemoApp: App {
    
    init() {
        StartUp.load()
    }
    var body: some Scene {
        WindowGroup {
            ContainerView {
                ContentView()
            }
        }
    }
}

enum StartUp {
    static func load() {
        DesignSystem.Font.register()
    }
}
