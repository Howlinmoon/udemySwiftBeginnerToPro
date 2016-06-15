//
//  RoundedImageView.swift
//  MVCTest
//
//  Created by jim Veneskey on 6/15/16.
//  Copyright © 2016 Jim Veneskey. All rights reserved.
//

import UIKit

class RoundedImageView: UIImageView {

    // correct way to manipulate an image
    
    override func awakeFromNib() {

        self.layer.cornerRadius = 5.0
        self.clipsToBounds = true

    }

}
