//
//  EnterButtonView.swift
//  instagramLayout
//
//  Created by Meruyert Tastandiyeva on 1/27/21.
//

import UIKit

class EnterButtonView: UIView {

    lazy var enterButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = UIColor(red: 142/255, green: 200/255, blue: 247/255, alpha: 1)
        button.layer.cornerRadius = 8
        button.titleLabel?.textColor = .white
        button.addTarget(self, action: #selector(enterButtonPressed), for: .touchUpInside)
        return button
    }()
    
    override init(frame: CGRect = .zero) {
        super.init(frame: frame)
        
        setUpViews()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    public func setParameters(text: String) {
        enterButton.setTitle(text, for: .normal)
    }
    
    private func setUpViews() {
        self.addSubview(enterButton)
        enterButton.translatesAutoresizingMaskIntoConstraints = false
        
        enterButton.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        enterButton.leadingAnchor.constraint(equalTo: self.leadingAnchor).isActive = true
        enterButton.trailingAnchor.constraint(equalTo: self.trailingAnchor).isActive = true
        enterButton.heightAnchor.constraint(equalToConstant: 44).isActive = true
    }
    
    @objc func enterButtonPressed() {
        print(#function)
    }

}
