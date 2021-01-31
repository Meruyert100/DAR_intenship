//
//  CancelButtonView.swift
//  instagramLayout
//
//  Created by Meruyert Tastandiyeva on 1/27/21.
//

import UIKit

class CancelButtonView: UIView {

    lazy var cancelButton: UIButton = {
        let button = UIButton()
        button.addTarget(self, action: #selector(cancelButtonPressed), for: .touchUpInside)
        return button
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
        cancelButton.setBackgroundImage(image, for: .normal)
    }
    
    private func setUpViews() {
        self.addSubview(cancelButton)
        cancelButton.translatesAutoresizingMaskIntoConstraints = false
        
        cancelButton.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        cancelButton.widthAnchor.constraint(equalToConstant: 35).isActive = true
        cancelButton.heightAnchor.constraint(equalToConstant: 35).isActive = true
    }
    
    @objc func cancelButtonPressed() {
        print(#function)
    }
    
}
