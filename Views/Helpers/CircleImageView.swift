//
//  CircleImageView.swift
//  demoUI
//
//  Created by Gheorghi Petis on 25.06.2024.
//

import SwiftUI

struct CircleImageView: View {
    var image: Image
    
    var body: some View {
        image
            .clipShape(Circle())
            .overlay {
                Circle().stroke(.white, lineWidth: 4)
            }
            .shadow(radius: 7)
    }
}

#Preview {
    CircleImageView(image: Image("turtlerock"))
}
