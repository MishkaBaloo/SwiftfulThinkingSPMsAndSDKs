//
//  SDWebImageView.swift
//  SwiftfulThinkingSPMsAndSDKs
//
//  Created by Michael on 1/31/25.
//

// https://picsum.photos/200/300

import SwiftUI
import SDWebImageSwiftUI

struct SDWebImageLoader: View {
    
    let url: String
    var contentMode: ContentMode = .fill
    
    var body: some View {
        WebImage(url: URL(string: url))
            .onSuccess(perform: { image, data, cacheType in
                //
            })
            .onFailure(perform: { error in
                //
            })
            .resizable()
        //            .indicator(.activity)
            .aspectRatio(contentMode: contentMode)
    }
}

struct SDWebImageView: View {
    
    var body: some View {
        ImageLoader(
            url: "https://picsum.photos/200/300",
            contentMode: .fill
        )
        .frame(width: 200, height: 200)
        .onAppear {
            ImagePrefetcher.instance.startPrefetching(urls: [])
        }
    }
}

#Preview {
    SDWebImageView()
}
