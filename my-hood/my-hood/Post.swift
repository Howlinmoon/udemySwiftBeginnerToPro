//
//  Post.swift
//  my-hood
//
//  Created by jim Veneskey on 8/1/16.
//  Copyright © 2016 Jim Veneskey. All rights reserved.
//

import Foundation

class Post {
    
    private var imagePath: String
    private var title: String
    private var postDesc: String
    
    
    init(imagePath: String, title: String, description: String) {
        self.imagePath = imagePath
        self.title = title
        self.postDesc = description
    }
}
