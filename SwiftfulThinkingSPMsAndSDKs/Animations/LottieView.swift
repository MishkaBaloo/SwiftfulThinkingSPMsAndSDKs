//
//  LottieView.swift
//  SwiftfulThinkingSPMsAndSDKs
//
//  Created by Michael on 2/3/25.
//

import SwiftUI
import Lottie

// .json <- OLD
// .dotLottie <- NEW

struct LottieHelperView: View {
    
    var fileName: String = "GiraffeAnimation.json"
    var contentMode: UIView.ContentMode = .scaleAspectFit
    var playLoopMode: LottieLoopMode = .playOnce
    var onAnimationDidFinish: (() -> Void)? = nil
    
    var body: some View {
        LottieView(animation: .named(fileName))
            .configure({ lottieAnimationView in
                lottieAnimationView.contentMode = contentMode
//                lottieAnimationView.shouldRasterizeWhenIdle = true
            })
            .playbackMode(.playing(.toProgress(1, loopMode: playLoopMode)))
            .animationDidFinish { completed in
                onAnimationDidFinish?()
            }
    }
}

#Preview {
    LottieHelperView()
}
