//
//  ContentView.swift
//  demoUI
//
//  Created by Gheorghi Petis on 25.06.2024.
//

import SwiftUI

struct ContentView: View {
    @State private var selection: Tab = .featured
    
    enum Tab {
        case featured
        case list
    }
    var body: some View {
        TabView(selection: $selection,
                content:  {
            CategoryHome()
                .tabItem {
                    Label("Featured", systemImage: "star")
                }
                .tag(Tab.featured)
            
            LandmarkListView()
                .tabItem {
                    Label("List", systemImage: "list.bullet")
                }
                .tag(Tab.list)
        })
        
    }
}

#Preview {
    ContentView()
        .environment(ModelData())
}
