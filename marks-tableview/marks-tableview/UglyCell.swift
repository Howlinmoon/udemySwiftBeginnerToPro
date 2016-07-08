//
//  UglyCell.swift
//  marks-tableview
//
//  Created by jim Veneskey on 7/8/16.
//  Copyright © 2016 Jim Veneskey. All rights reserved.
//

import UIKit

class UglyCell: UITableViewCell {

    @IBOutlet weak var mainImg: UIImageView!
    @IBOutlet weak var mainLbl: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    func configureCell (image:UIImage, text:String) {
        mainImg.image = image
        mainLbl.text = text
    }


}
