//
//  Constants.swift
//  FlickrGallery
//
//  Created by Abbas Angouti on 3/21/18.
//  Copyright © 2018 Abbas Angouti. All rights reserved.
//

import Foundation

struct Constants {
    
    enum SizeSuffix: String {
        case s, q, t, m, n, z, c, b, h, k, o
    }
    
    
    struct URLs {
        static let baseURL = "https://api.flickr.com/services/rest/"
    }
    
    
    struct Keys {
        static let APIKey = "#YOUR API KEY HERE#"
    }
    
    
    struct Methods {
        static let getRecentPhotos = "flickr.photos.getRecent"
    }
}

