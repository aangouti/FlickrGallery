//
//  Model.swift
//  FlickrGallery
//
//  Created by Abbas Angouti on 3/21/18.
//  Copyright © 2018 Abbas Angouti. All rights reserved.
//

import Foundation


protocol APIResult {
    
}

struct Photo: Codable {
    let id: String
    let owner: String
    let secret: String
    let server: String
    let farm: Int
    let title: String
    let ispublic: Int
    let isfriend: Int
    let isfamily: Int
    
    func imageUrl(size: String) -> URL? {
        let urlString = String(format: "https://farm%d.staticflickr.com/%@/%@_%@_%@.jpg", farm, server, id, secret, size)

        return URL(string: urlString)
    }
}

struct Photos: Codable, APIResult {
    let page: Int
    let pages: Int
    let perPage: Int
    let total: Int
    var photoArray: [Photo] {
        didSet {
            print(photoArray)
        }
    }
    
    private enum CodingKeys: String, CodingKey {
        case page
        case pages
        case perPage = "perpage"
        case total
        case photoArray = "photo"
    }
}

struct ApiResponse: Codable {
    let stat: String
    let photos: Photos
}
