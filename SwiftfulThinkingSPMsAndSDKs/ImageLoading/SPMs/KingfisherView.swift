//
//  KingfisherView.swift
//  SwiftfulThinkingSPMsAndSDKs
//
//  Created by Michael on 2/1/25.
//

import SwiftUI
import Kingfisher

struct KingfisherImageLoader: View {
    
    let url: String
    var contentMode: SwiftUI.ContentMode = .fill
    
    var body: some View {
        KFImage(URL(string: url))
            .placeholder {
                Color.red
            }
            .resizable()
            .onProgress({ receivedSize, totalSize in
                
            })
            .onSuccess({ RetrieveImageResult in
                
            })
            .onFailure({ KingfisherError in
                
            })
//            .setProcessor(any ImageProcessor)
//            .cacheMemoryOnly()
//            .lowDataModeSource(.network(lowResolutionURL))
            .aspectRatio(contentMode: contentMode)
        
        
        /*
         KFImage.url(url)
                  .placeholder(placeholderImage)
                  .setProcessor(processor)
                  .loadDiskFileSynchronously()
                  .cacheMemoryOnly()
                  .fade(duration: 0.25)
                  .lowDataModeSource(.network(lowResolutionURL))
                  .onProgress { receivedSize, totalSize in  }
                  .onSuccess { result in  }
                  .onFailure { error in }
         */
    }
}

#Preview {
    KingfisherImageLoader(
        url: "https://picsum.photos/id/660/200/300",
        contentMode: .fill
    )
    .frame(width: 200, height: 200)
}
