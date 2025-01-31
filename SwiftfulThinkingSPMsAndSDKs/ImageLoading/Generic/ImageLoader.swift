//
//  ImageLoader.swift
//  SwiftfulThinkingSPMsAndSDKs
//
//  Created by Michael on 2/1/25.
//

import SwiftUI
import SDWebImageSwiftUI

struct ImageLoader: View {
    
    let url: String
    var contentMode: ContentMode = .fill
    
    var body: some View {
        Rectangle()
            .opacity(0)
            .overlay {
//                SDWebImageLoader(url: url, contentMode: contentMode)
                KingfisherImageLoader(url: url, contentMode: contentMode)
                //                    .allowsHitTesting(false)
            }
            .clipped()
    }
}

#Preview {
    ImageLoader(
        url: "https://picsum.photos/id/22/200/300",
        contentMode: .fill
    )
}
