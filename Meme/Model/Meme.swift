//
//  Meme.swift
//  Meme
//
//  Created by Mohamed Mohsen on 4/26/19.
//  Copyright © 2019 Mohamed Mohsen. All rights reserved.
//

import Foundation
import UIKit

struct Meme{
    var name: String!
    var topText: String?
    var bottomText: String?
    var originalImage: UIImage!
    var memeImage: UIImage!
    
    init() {
        self.name = ""
        self.topText = ""
        self.bottomText = ""
        self.originalImage = UIImage()
        self.memeImage = UIImage()
    }
    
    init(name: String?, topText: String?, bottomText: String?, originalImage: UIImage?, memedImage: UIImage?)
    {
        self.name = name ?? ""
        self.topText = topText ?? ""
        self.bottomText = bottomText ?? ""
        self.originalImage = originalImage ?? UIImage()
        self.memeImage = memeImage ?? UIImage()
    }
    
}
