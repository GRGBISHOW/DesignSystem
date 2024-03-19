//
//  DataViewModel.swift
//  DesignSystemDemo
//
//  Created by Bishow Gurung on 19/3/2024.
//

import Foundation
class DataViewModel: ObservableObject {
    let names = ["Jhon Mina", "Lark Madi", "Big Mike", "Ronny Cary"]
    let dates = ["02/25", "03/26", "06/27", "05/29"]
    let titles = ["Internet Bill",
                  "Netflix subscription ",
                  "Prime subscripion",
                  "Car repair",
                  "Groceries"]
    
    let transactions = ["$120",
                        "$190",
                        "$230",
                        "$360",
                        "$410"]
    let icons = ["box.truck.badge.clock.rtl",
                        "beats.fit.pro.right",
                        "music.house.fill",
                        "logo.playstation",
                        "tram.tunnel.fill"]
}

extension Array where Element == String {
    var random: String {
        self.randomElement() ?? ""
    }
}
