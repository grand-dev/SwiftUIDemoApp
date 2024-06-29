//
//  LandmarkListView.swift
//  demoUI
//
//  Created by Gheorghi Petis on 26.06.2024.
//

import SwiftUI

struct LandmarkListView: View {
    @Environment(ModelData.self) var modelData
    @State private var showOnlyFavorites = false
    
    var filteredLandmarks: [Landmark] {
        modelData.landmarks.filter { landmark in
            (!showOnlyFavorites || landmark.isFavorite)
        }
    }
    
    var body: some View {
        NavigationSplitView {

            List {
                Toggle(isOn: $showOnlyFavorites) {
                    Text("Favorites only")
                }

                ForEach(filteredLandmarks) { landmark in
                    
                    NavigationLink {
                        LandmarkDetailView(landmark: landmark)
                    } label: {
                        LandmarkRowView(landmark: landmark)
                    }
                }
                .animation(.default, value: filteredLandmarks)
                .navigationTitle("Landmarks")
            }
        } detail: {
            Text("Select a Landmark")
        }
    }
}

#Preview {
    LandmarkListView()
        .environment(ModelData())
}
