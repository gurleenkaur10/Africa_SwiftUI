//
//  VideoPlayerView.swift
//  Africa
//
//  Created by Gurleen Kaur on 2023-07-28.
//

import SwiftUI
import AVKit

struct VideoPlayerView: View {
    //Propeties
    
    var videoSelected: String
    var videoTitle: String
    
    //body
    
    var body: some View {
        VStack {
            VideoPlayer(player: playVideo(fileName: videoSelected, fileformat: "mp4")){
//                Text(videoTitle)
            }
            .overlay(
            Image("logo")
                .resizable()
                .scaledToFit()
                .frame(width: 32, height: 32)
                .padding(.top , 6)
                .padding(.horizontal, 8)
            ,alignment: .topLeading
            )
        }// vstack
        .accentColor(.accentColor)
        .navigationTitle(videoTitle)
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct VideoPlayerView_Previews: PreviewProvider {
    static var previews: some View {
        VideoPlayerView(videoSelected: "lion", videoTitle: "Lion")
    }
}
