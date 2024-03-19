//
//  ContentView.swift
//  DesignSystemDemo
//
//  Created by Bishow Gurung on 19/3/2024.
//

import DesignSystem
import SwiftUI

struct ContentView: View {
    @StateObject var viewModel = DataViewModel()
    
    var body: some View {
        VStack(spacing: Dimension.points8) {
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(alignment: .center, spacing: Dimension.points8) {
                    ForEach(1..<5) { item in
                        CardView {
                            BalanceCard(viewModel: viewModel)
                        }
                        .frame(height: Dimension.points120)
                    }
                }
            }
            .padding(.vertical, Dimension.points16)
            
            ListView {
                Section {
                    ForEach(1..<10) { item in
                        ListItem(leftImage: viewModel.icons.random, title: viewModel.titles.random, description: viewModel.transactions.random, rightImage: "chevron.right.circle")
                    }
                }
            }
            
            HStack {
                Button(title: "Check balance", type:.secondary, action: { })
                Button(title: "Apply Loan", type:.primary, action: { })
            }
        }
        
        
    }
}

struct BalanceCard: View {
    @ObservedObject var viewModel: DataViewModel
    var body: some View {
        VStack {
            HStack {
                Text(viewModel.transactions.random)
                    .fontStyle(with: .body)
                Spacer()
                Image(systemName: "creditcard.circle")
                    .aspectRatio(contentMode: .fit)
                    .frame(width: Dimension.points4,
                           height:  Dimension.points4)
            }
            Spacer()
            Text("0000 XXXX XXXX 0000")
                .fontStyle(with: .notes)
            Spacer()
            HStack {
                Text(viewModel.names.random)
                    .fontStyle(with: .caption)
                Spacer()
                Text(viewModel.dates.random)
                    .fontStyle(with: .caption)
            }
        }
    }
}

