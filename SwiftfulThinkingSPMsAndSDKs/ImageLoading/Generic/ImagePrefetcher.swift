//
//  ImagePrefetcher.swift
//  SwiftfulThinkingSPMsAndSDKs
//
//  Created by Michael on 2/1/25.
//

import Foundation
import SDWebImageSwiftUI
import Kingfisher

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

final class ImagePrefetcherKingfisher {
    
    static let instance = ImagePrefetcherKingfisher()
    var prefetchers: [[URL]: Kingfisher.ImagePrefetcher] = [:]
    
    private init() { }
    
    func startPrefetching(urls: [URL]) {
        prefetchers[urls] = Kingfisher.ImagePrefetcher(urls: urls)
        prefetchers[urls]?.start()
    }
    
    func stopPrefetching(urls: [URL]) {
        prefetchers[urls]?.stop()
    }
    
}
