//
//  VideoModel.swift
//  Africa
//
//  Created by Gurleen Kaur on 2023-07-27.
//

import Foundation

struct Video: Codable, Identifiable {
    
    let id: String
    let name: String
    let headline: String
    
        // commuted property
    var thumbnail: String{
        "video-\(id)"
    }
}
