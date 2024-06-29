//
//  FeaturedCardView.swift
//  demoUI
//
//  Created by Gheorghi Petis on 29.06.2024.
//

import SwiftUI

struct FeaturedCardView: View {
    var landmark: Landmark
    
    var body: some View {
        landmark.featureImage?
            .resizable()
            .overlay {
                TextOverlay(landmark: landmark)
            }
    }
}

struct TextOverlay: View {
    var landmark: Landmark
    
    var gradient: LinearGradient {
        .linearGradient(Gradient(colors: [.black.opacity(0.6), .black.opacity(0)]),
                        startPoint: .bottom, endPoint: .center)
    }
    
    var body: some View {
        ZStack(alignment: .bottomLeading) {
            gradient
            VStack(alignment: .leading) {
                Text(landmark.name)
                    .font(.title)
                    .bold()
                Text(landmark.park)
            }
            .padding()
        }
        .foregroundStyle(.white)
    }
}

#Preview {
    FeaturedCardView(landmark: ModelData().featuredLandmarks[0])
        .aspectRatio(3/2, contentMode: .fit)
}
