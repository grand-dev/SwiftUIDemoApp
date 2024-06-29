//
//  PageView.swift
//  demoUI
//
//  Created by Gheorghi Petis on 29.06.2024.
//

import SwiftUI

struct PageView<Page: View>: View {
    var pages: [Page]
    @State private var currentPage = 2
    
    var body: some View {
        ZStack(alignment: .bottomTrailing) {
            PageViewController(pages: pages, currentPage: $currentPage)
            PageControl(numberOfPages: pages.count, currentPage: $currentPage)
                .frame(width: CGFloat(pages.count * 18))
                .padding(.trailing)
        }
        .aspectRatio(3/2, contentMode: .fit)
        
    }
}

#Preview {
    PageView(pages: ModelData().featuredLandmarks.map{ FeaturedCardView(landmark: $0) }
    )
}
