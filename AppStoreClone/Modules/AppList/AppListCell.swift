//
//  AppListCell.swift
//  AppStoreClone
//
//  Created by Ensar Ozturk on 24.09.2022.
//

import UIKit

class AppListCell: UICollectionViewCell {
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var artistNameLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        imageView.layer.cornerRadius = 16
        nameLabel.font = UIFont.systemFont(ofSize: 16)
        artistNameLabel.font = UIFont.systemFont(ofSize: 11)
        nameLabel.textColor = UIColor.black
        artistNameLabel.textColor = UIColor.darkGray
        
    }

}
