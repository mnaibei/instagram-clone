//
//  HeaderCVCell.swift
//  instagram clone
//
//  Created by Mucha Naibei on 26/09/2022.
//

import UIKit

class HeaderCVCell: UICollectionViewCell {

    //outlet
    @IBOutlet weak var imageViewStory: UIImageView!
    
    
    //lifecycle
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        imageViewStory.layer.cornerRadius = 30
        imageViewStory.layer.masksToBounds = true
        imageViewStory.backgroundColor = .systemPink
        //imageViewStory.tintColor = .systemRed
    }

}
