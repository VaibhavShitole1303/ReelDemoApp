//
//  CoustomVideoPlayer.swift
//  ReelDemoApp
//
//  Created by Neosao Services on 05/04/24.
//

import SwiftUI
import AVKit

struct CoustomVideoPlayer: UIViewControllerRepresentable{
    var player:AVPlayer
    
    func makeUIViewController(context: Context) -> some UIViewController {
        let controller = AVPlayerViewController()
        controller.player=player
        controller.showsPlaybackControls = false
        controller.exitsFullScreenWhenPlaybackEnds = true
        controller.allowsPictureInPicturePlayback = true
        controller.videoGravity = .resizeAspectFill
        return controller
    }
    func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) {
        
    }
}
