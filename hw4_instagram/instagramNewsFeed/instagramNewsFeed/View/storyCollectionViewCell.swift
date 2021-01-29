//
//  storyCollectionViewCell.swift
//  instagramNewsFeed
//
//  Created by Meruyert Tastandiyeva on 1/29/21.
//

import UIKit

class storyCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var storyCollectionView: UIImageView!
    
    @IBOutlet weak var usernameStoryLabel: UILabel!

    public func configure(with model: User) {
        storyCollectionView.image = model.avatar
        usernameStoryLabel.text = model.username
        setStyle()
    }
    
    private func setStyle() {
        storyCollectionView.layer.cornerRadius = (storyCollectionView?.frame.size.height ?? 0.0) / 2
        storyCollectionView.clipsToBounds = true
        storyCollectionView.layer.borderWidth = 2.0
        storyCollectionView.layer.borderColor = UIColor.white.cgColor
    }
    
    
}
