//
//  postTableViewCell.swift
//  instagramNewsFeed
//
//  Created by Meruyert Tastandiyeva on 1/29/21.
//

import UIKit

class postTableViewCell: UITableViewCell {
    
    @IBOutlet weak var postAvatarImageView: UIImageView!
    
    @IBOutlet weak var postUsernameLabel: UILabel!
    
    @IBOutlet weak var moreButton: UIButton!
    
    @IBOutlet weak var postImageView: UIImageView!
    
    @IBOutlet weak var numberOfLikesButton: UIButton!
    
    @IBOutlet weak var commentButton: UIButton!
    
    @IBOutlet weak var shareButton: UIButton!
    
    @IBOutlet weak var saveButton: UIButton!
    
    @IBOutlet weak var numberOfLikesLabel: UILabel!
    
    @IBOutlet weak var captionLabel: UILabel!
    
    @IBOutlet weak var timeAgoLabel: UILabel!
    
    var post: Post! {
        didSet {
            self.updateUI()
        }
    }
    
    func updateUI()
    {
        postAvatarImageView.image = post.createdBy.avatar
        postAvatarImageView.layer.cornerRadius = postAvatarImageView.bounds.width / 2.0
        postAvatarImageView.layer.masksToBounds = true
        
        postUsernameLabel.text = post.createdBy.username
        
        moreButton.layer.borderWidth = 1.0
        moreButton.layer.cornerRadius = 2.0
        moreButton.layer.borderColor = moreButton.tintColor.cgColor
        moreButton.layer.masksToBounds = true
        
        self.postImageView.image = post.image
        numberOfLikesLabel.text = "Likes: " + String(post.numberOfLikes ?? 0)
        captionLabel.text = post.caption
        timeAgoLabel.text = post.timeAgo
        
    }
}
