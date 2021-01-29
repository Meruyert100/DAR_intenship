//
//  Post.swift
//  instagramNewsFeed
//
//  Created by Meruyert Tastandiyeva on 1/29/21.
//

import UIKit

struct Post {
    var createdBy: User
    var caption: String?
    var image: UIImage?
    var numberOfLikes: Int?
    var timeAgo: String?
    
    static func fetchPosts() -> [Post] {
        var posts = [Post]()
        
        let user1 = User(avatar: UIImage(imageLiteralResourceName: "nietzche"), username: "nietzche")
        let post1 = Post(createdBy: user1, caption: "Wise words from Will Smith: The only thing that I see that is distinctly different from me is: I'm not afraid to die on a treadmill. I will not be outworked, period. You might have more talent than me, you might be smarter than me, you might be sexier than me. You might be all of those things. You got it on me in nine categories. But if we get on the treadmill together, there's two things. You're getting off first, or I'm going to die. It's really that simple. Love that. I wish that you'll embrace this mindset in everything that you do. Tonight, when you think about 2017, don't set resolutions but set goals. Trust in your abilities to figure things out. No matter how small you start, start something that matters. With enough time, focus, effort, even resources and mentorship, you will develop new skills and achieve your goals.", image: UIImage(named: "1"), numberOfLikes: 12, timeAgo: "1 hr ago")
        
        let user2 = User(avatar: UIImage(imageLiteralResourceName: "tolstoy"), username: "tolstoy")
        let post2 = Post(createdBy: user2, caption: "When you work on any thing that matters, it's ok to worry, fear, and be uncomfortable. Just never give up!", image: UIImage(named: "2"), numberOfLikes: 8, timeAgo: "3 hrs ago")
        
        let user3 = User(avatar: UIImage(imageLiteralResourceName: "margaret"), username: "margo")
        let post3 = Post(createdBy: user3, caption: "Hello!", image: UIImage(named: "3"), numberOfLikes: 8, timeAgo: "5 hrs ago")
        
        posts.append(post1)
        posts.append(post2)
        posts.append(post3)
        
        return posts
    }
    
}
