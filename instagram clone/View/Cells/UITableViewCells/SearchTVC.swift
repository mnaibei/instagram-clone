//
//  SearchTVC.swift
//  instagram clone
//
//  Created by Mucha Naibei on 27/09/2022.
//

import UIKit

class SearchTVC: UITableViewCell {

    
    @IBOutlet weak var imageViewSearch: UIImageView!
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        imageViewSearch.layer.cornerRadius = 20
        imageViewSearch.layer.masksToBounds = true
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
