//
//  RegisterButtonView.swift
//  instagramLayout
//
//  Created by Meruyert Tastandiyeva on 1/27/21.
//

import UIKit

class RegisterButtonView: UIView {
    
    lazy var questionLabel: UILabel = {
        let label = UILabel()
        label.text = "У вас нет аккаунта?"
        label.textColor = .gray
        label.font = UIFont.systemFont(ofSize: 14)
        label.textAlignment = .center
        return label
    }()
    
    lazy var registerButton: UIButton = {
        let button = UIButton()
        button.setTitle("Зарегистрируйтесь.", for: .normal)
        button.setTitleColor(UIColor(red: 36/255, green: 125/255, blue: 246/255, alpha: 1), for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 14)
        button.addTarget(self, action: #selector(registerButtonPressed), for: .touchUpInside)
        return button
    }()
    
    override init(frame: CGRect = .zero) {
        super.init(frame: frame)
        setUpViews()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setUpViews() {
        [questionLabel, registerButton].forEach {
            self.addSubview($0)
            $0.translatesAutoresizingMaskIntoConstraints = false
        }
        
        questionLabel.topAnchor.constraint(equalTo: self.topAnchor, constant: 5).isActive = true
        questionLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor).isActive = true
        
        registerButton.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        registerButton.leadingAnchor.constraint(equalTo: questionLabel.trailingAnchor, constant: 5).isActive = true
        registerButton.trailingAnchor.constraint(equalTo: self.trailingAnchor).isActive = true
        
    }
    
    @objc func registerButtonPressed() {
        print(#function)
    }
    
}

