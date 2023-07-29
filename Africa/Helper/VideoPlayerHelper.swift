//
//  VideoPlayerHelper.swift
//  Africa
//
//  Created by Gurleen Kaur on 2023-07-28.
//

import Foundation
import AVKit


var videoPlayer: AVPlayer?

func playVideo(fileName: String, fileformat: String) -> AVPlayer{
    if Bundle.main.url(forResource: fileName, withExtension: fileformat) != nil{
        videoPlayer = AVPlayer(url: Bundle.main.url(forResource: fileName, withExtension: fileformat)!)
        videoPlayer?.play()
    }
    
    return videoPlayer!
}
