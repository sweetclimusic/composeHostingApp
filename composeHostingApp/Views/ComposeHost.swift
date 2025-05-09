//
//  ComposeHose.swift
//  composeHostingApp
//
//  Created by Ashlee Muscroft on 06/05/2025.
//
import SwiftUI
import SUIComponents

struct ComposeHost: View {
    var body: some View {
        NavigationView{
            VStack(spacing: .spacer16) {
                Image(systemName: "books.vertical.fill")
                    .imageScale(.large)
                    .foregroundStyle(Color.Semantic.secondaryButtonText)
                Text("Hello from the compose library!")
            }
            .padding()
        }.navigationTitle(Text("Compose Library"))
    }
}
