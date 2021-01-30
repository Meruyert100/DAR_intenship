//
//  CommentsViewController.swift
//  instagramNewsFeed
//
//  Created by Meruyert Tastandiyeva on 1/30/21.
//

import UIKit

class CommentsViewController: UIViewController {

    var rowCount = 0
    var commentArray:[String] = []

    @IBOutlet weak var userAvatarImageView: UIImageView!
    
    @IBOutlet weak var usernameLabel: UILabel!
    
    @IBOutlet weak var captionLabel: UILabel!
    
    @IBOutlet weak var tableView: UITableView!
    
    @IBOutlet weak var textField: UITextField!
    
    var image = UIImage()
    var name = ""
    var text = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setUI()
        
        userAvatarImageView.image = image
        usernameLabel.text = name
        captionLabel.text = text
        
        tableView.delegate = self
        tableView.delegate = self
    }
    
    func setUI() {
        userAvatarImageView.layer.cornerRadius = userAvatarImageView.bounds.width / 2.0
        userAvatarImageView.layer.masksToBounds = true
    }
    

    @IBAction func addButton(_ sender: Any) {
        rowCount = rowCount + 1
        commentArray.append(textField.text ?? "")
        tableView.reloadData()
    }
    
}

extension CommentsViewController: UITableViewDelegate, UITableViewDataSource {
    
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return rowCount
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "commentCell", for: indexPath) as! commentTableViewCell
        cell.commentLabel.text = self.commentArray[indexPath.section]
        return cell
    }

}
