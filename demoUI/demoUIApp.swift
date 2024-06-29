//
//  demoUIApp.swift
//  demoUI
//
//  Created by Gheorghi Petis on 25.06.2024.
//

import SwiftUI

@main
struct demoUIApp: App {
    @State private var modelData = ModelData()

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(modelData)
        }
    }
}
