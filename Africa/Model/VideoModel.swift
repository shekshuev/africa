//
//  VideoModel.swift
//  Africa
//
//  Created by Sergei Shekshuev on 25.12.2022.
//

import Foundation

struct Video: Codable, Identifiable {
    let id: String
    let name: String
    let headline: String
    
    var thumbnail: String {
        "video-\(id)"
    }
}
