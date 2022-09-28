//
//  HomeFeedsTVC.swift
//  instagram clone
//
//  Created by Mucha Naibei on 26/09/2022.
//

import UIKit

class HomeFeedsTVC: UITableViewCell {

    //outlets
    
    @IBOutlet weak var imageViewUser: UIImageView!
    
    @IBOutlet weak var labelUserName: UILabel!
    
    @IBOutlet weak var imageViewStock: UIImageView!
    
   
    @IBAction func userLikeButton(_ sender: Any) {
        self.backgroundColor = .systemRed
    }
   
    
    //lifecycle
    override func awakeFromNib() {
        super.awakeFromNib()
        
        imageViewUser.layer.cornerRadius = imageViewUser.frame.height / 2
       
        imageViewUser.layer.masksToBounds = true
        
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
}
