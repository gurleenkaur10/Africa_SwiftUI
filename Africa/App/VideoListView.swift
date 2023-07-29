//
//  VideoListView.swift
//  Africa
//
//  Created by Gurleen Kaur on 2023-07-19.
//

import SwiftUI

struct VideoListView: View {
    //property
    
    @State var video: [Video] = Bundle.main.decode("videos.json")
    
    let hapticImpact = UIImpactFeedbackGenerator(style: .medium)
    
    // body
    var body: some View {
        NavigationView {
            List(video) { item in
                NavigationLink(destination: VideoPlayerView(videoSelected: item.id, videoTitle: item.name)) {
                    VideoListItemView(video: item)
                        .padding(.vertical, 8)
                }
            }//List
            .listStyle(InsetGroupedListStyle())
            .navigationTitle("Videos")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar{
                ToolbarItem(placement: .navigationBarTrailing){
                    Button(action: {
                        video.shuffle()
                        hapticImpact.impactOccurred()
                    }){
                        Image(systemName: "arrow.2.squarepath")
                    }
                }
            }
        }// navigation
    }
}

struct VideoListView_Previews: PreviewProvider {
    static var previews: some View {
        VideoListView()
    }
}
