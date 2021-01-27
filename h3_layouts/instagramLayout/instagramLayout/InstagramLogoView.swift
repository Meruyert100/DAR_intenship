//
//  InstagramLogoView.swift
//  instagramLayout
//
//  Created by Meruyert Tastandiyeva on 1/27/21.
//

import UIKit

class InstagramLogoView: UIView {

    lazy var logoImageView: UIImageView = {
        let imageView = UIImageView()
        return imageView
    }()

    override init(frame: CGRect = .zero) {
        super.init(frame: frame)
        
        setUpViews()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    public func setParameters(imageName: String) {
        guard let image = UIImage(named: imageName) else {
            return
        }
        logoImageView.image = image
        logoImageView.contentMode = .scaleAspectFit
    }
    
    private func setUpViews() {
        self.addSubview(logoImageView)
        logoImageView.translatesAutoresizingMaskIntoConstraints = false
        
        logoImageView.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        logoImageView.widthAnchor.constraint(equalToConstant: 210).isActive = true
        logoImageView.heightAnchor.constraint(equalToConstant: 210).isActive = true
    }
}
