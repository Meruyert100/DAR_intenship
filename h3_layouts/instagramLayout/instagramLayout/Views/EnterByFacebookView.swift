//
//  EnterByFacebookView.swift
//  instagramLayout
//
//  Created by Meruyert Tastandiyeva on 1/27/21.
//

import UIKit

class EnterByFacebookView: UIView {
    
    lazy var facebookImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()
    
    lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.boldSystemFont(ofSize: 18)
        label.textAlignment = .center
        return label
    }()
    
    override init(frame: CGRect = .zero) {
        super.init(frame: frame)
        setUpViews()
        setStyle()
        enableEnterByFacebook()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    public func setParameters(imageName: String, title: String) {
        titleLabel.text = title
        titleLabel.textColor = UIColor(red: 36/255, green: 125/255, blue: 246/255, alpha: 1)
        guard let image = UIImage(named: imageName) else {
            return
        }
        self.facebookImageView.image = image
    }
    
    private func setUpViews() {
        [facebookImageView, titleLabel].forEach {
            self.addSubview($0)
            $0.translatesAutoresizingMaskIntoConstraints = false
        }
        
        facebookImageView.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        facebookImageView.leadingAnchor.constraint(equalTo: self.leadingAnchor).isActive = true
        facebookImageView.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
        facebookImageView.widthAnchor.constraint(equalToConstant: 32).isActive = true
        
        titleLabel.leadingAnchor.constraint(equalTo: facebookImageView.trailingAnchor, constant: 5).isActive = true
        titleLabel.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        titleLabel.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
        titleLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor).isActive = true
       
    }
    
    private func setStyle() {
        self.layer.borderColor = .none
        self.layer.backgroundColor = .none
    }
    
    private func enableEnterByFacebook() {
        let tap = UITapGestureRecognizer(target: self, action: #selector(enterByFacebookPressed))
        self.addGestureRecognizer(tap)
        self.isUserInteractionEnabled = true
    }
    
    @objc func enterByFacebookPressed() {
        print(#function)
    }
}
