//
//  ViewController.swift
//  instagramNewsFeed
//
//  Created by Meruyert Tastandiyeva on 1/29/21.
//

import UIKit

class ViewController: UIViewController {
    
    var users: [User]?
    var posts: [Post]?
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionView.dataSource = self
        collectionView.delegate = self
        
        tableView.delegate = self
        tableView.delegate = self
        
        self.fetchUsers()
        self.fetchPosts()
        
    }
    
    func fetchUsers()
    {
        self.users = User.fetchUsers()
        self.collectionView.reloadData()
    }
    
    func fetchPosts()
    {
        self.posts = Post.fetchPosts()
        self.tableView.reloadData()
    }
    
}

extension ViewController: UICollectionViewDelegate, UICollectionViewDataSource, UITableViewDelegate, UITableViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return users?.count ?? 0
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "storyCell", for: indexPath) as! storyCollectionViewCell
        cell.configure(with: (users?[indexPath.row])!)
        return cell
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return posts?.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "postCell", for: indexPath) as! postTableViewCell
        
        cell.post = self.posts?[indexPath.section]
        cell.selectionStyle = .none
        
        return cell
    }
    
}

extension ViewController {
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {

        let secondViewController = segue.destination as! CommentsViewController

        secondViewController.image = UIImage(named: "nietzche")!
        secondViewController.name = "nietzche"
        secondViewController.text = "Wise words from Will Smith: The only thing that I see that is distinctly different from me is: I'm not afraid to die on a treadmill. I will not be outworked, period. You might have more talent than me, you might be smarter than me, you might be sexier than me. You might be all of those things. You got it on me in nine categories. But if we get on the treadmill together, there's two things. You're getting off first, or I'm going to die. It's really that simple. Love that. I wish that you'll embrace this mindset in everything that you do. Tonight, when you think about 2017, don't set resolutions but set goals. Trust in your abilities to figure things out. No matter how small you start, start something that matters. With enough time, focus, effort, even resources and mentorship, you will develop new skills and achieve your goals."
        
    }
}
