//
//  Home.swift
//  composeHostingApp
//
//  Created by Ashlee Muscroft on 06/05/2025.
//
import SwiftUI
import SUIComponents

struct Home: View {
    var body: some View {
        NavigationView {
            VStack(alignment: .center, spacing: .spacer16) {
                ScrollView(.vertical, showsIndicators: false ) {
                    LazyVStack(alignment: .center, spacing: .spacer16) {
                        Components.Molecules.IconButtonView(
                            model: .init(
                                icon: Image(systemName: "info.circle"),
                                title: "John Smith", handler: {}))
                        .font(.title)
                        HomeExamples()
                    }
                }
            }
            HomeExamples()
        }.navigationBarTitle("HMRC Home view")
    }
}
