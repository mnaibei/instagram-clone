//
//  HomeHeaderTVC.swift
//  instagram clone
//
//  Created by Mucha Naibei on 26/09/2022.
//

import UIKit

class HomeHeaderTVC: UITableViewCell {

    @IBOutlet weak var collecttionViewHeader: UICollectionView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        collecttionViewHeader.delegate = self
        collecttionViewHeader.dataSource = self
        collecttionViewHeader.register(UINib(nibName: "HeaderCVCell", bundle: nil), forCellWithReuseIdentifier: "HeaderCVCell")
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
}

extension HomeHeaderTVC:UICollectionViewDelegate{}

extension HomeHeaderTVC:UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 11
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "HeaderCVCell", for: indexPath) as? HeaderCVCell else {
            fatalError("not dequed correctly")
            //return UICollectionViewCell()
        }
        
        return cell
    }
}

extension HomeHeaderTVC:UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 60, height: 60)
    }
}
