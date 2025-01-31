//
//  SDWebImageView.swift
//  SwiftfulThinkingSPMsAndSDKs
//
//  Created by Michael on 1/31/25.
//

// https://picsum.photos/200/300

import SwiftUI
import SDWebImageSwiftUI

struct ImageLoader: View {
    
    let url: String
    var contentMode: ContentMode = .fill
    
    var body: some View {
        Rectangle()
            .opacity(0)
            .overlay {
                SDWebImageLoader(url: url, contentMode: contentMode)
                //                    .allowsHitTesting(false)
            }
            .clipped()
    }
}

fileprivate struct SDWebImageLoader: View {
    
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

final class ImagePrefetcher {
    
    static let instance = ImagePrefetcher()
    let prefetcher = SDWebImagePrefetcher()
    
    private init() { }
    
    func startPrefetching(urls: [URL]) {
        prefetcher.prefetchURLs(urls)
    }
    
    func stopPrefetching() {
        prefetcher.cancelPrefetching()
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
