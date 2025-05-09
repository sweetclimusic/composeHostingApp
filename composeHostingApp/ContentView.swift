//
//  ContentView.swift
//  composeHostingApp
//
//  Created by Ashlee Muscroft on 06/05/2025.
//

import SwiftUI
import SUIComponents

struct ContentView: View {
    enum Tabs {
        case home, compose
    }
    @State var selectedTabIndex: Tabs = .home
    
    @ViewBuilder func TitleView() -> some View {
        switch selectedTabIndex {
        case .home:
            Text("Money")
        case .compose:
            Text("Compose View")
        }
    }
    
    var body: some View {
        VStack {
            HStack {
                TitleView()
                    .font(.headline)
                    .fontWeight(.bold)
                    .padding(.leading, .spacer8)
                Button(action: {}) {
                    Image(systemName: "gearshape")
                        .frame(minWidth: .spacer24, minHeight: .spacer24)
                        .padding(EdgeInsets(top: .spacer8, leading: .zero, bottom: .zero, trailing: .spacer8))
                        .foregroundStyle(Color.Semantic.linkText)
                }
                
            }.padding(.zero)

            TabView(selection: $selectedTabIndex) {
                Tab("Your Tax Homepage", systemImage: "globe", value: .home) {
                    Home()
                }
                Tab("compose library", systemImage: "books.vertical", value: .compose) {
                    ComposeHost()
                }
            }.foregroundStyle(Color.Semantic.linkText)
        }
    }
}

#Preview {
    ContentView()
}
