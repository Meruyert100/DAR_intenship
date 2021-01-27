//
//  CredentialsEnterView.swift
//  instagramLayout
//
//  Created by Meruyert Tastandiyeva on 1/27/21.
//

import UIKit

class CredentialsEnterView: UIView {

    lazy var loginTextField: UITextField = {
        let textField = UITextField()
        setStyles(textField: textField)
        textField.layer.maskedCorners = [ .layerMinXMinYCorner, .layerMaxXMinYCorner]
        return textField
    }()
    
    lazy var passwordTextField: UITextField = {
        let textField = UITextField()
        setStyles(textField: textField)
        textField.layer.maskedCorners = [ .layerMaxXMaxYCorner, .layerMinXMaxYCorner]
        textField.isSecureTextEntry = true
        textField.textContentType = .oneTimeCode
        setRightView(textField: textField)
        return textField
    }()
    
    lazy var forgotPasswordButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = .none
        button.layer.borderColor = .none
        button.setTitle("Забыли пароль?", for: .normal)
        button.setTitleColor(UIColor(red: 36/255, green: 125/255, blue: 246/255, alpha: 1), for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 14)
        button.addTarget(self, action: #selector(forgotPasswordButtonPressed), for: .touchUpInside)
        return button
    }()
    
    override init(frame: CGRect = .zero) {
        super.init(frame: frame)
        setUpViews()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    public func setParameters(loginString: String, passwordString: String) {
        loginTextField.placeholder = loginString
        passwordTextField.placeholder = passwordString
    }
    
    private func setUpViews() {
        [loginTextField, passwordTextField, forgotPasswordButton].forEach {
            self.addSubview($0)
            $0.translatesAutoresizingMaskIntoConstraints = false
        }
        
        
        loginTextField.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        loginTextField.leadingAnchor.constraint(equalTo: self.leadingAnchor).isActive = true
        loginTextField.trailingAnchor.constraint(equalTo: self.trailingAnchor).isActive = true
        loginTextField.heightAnchor.constraint(equalToConstant: 44).isActive = true
        
        
        passwordTextField.topAnchor.constraint(equalTo: loginTextField.bottomAnchor, constant: 10).isActive = true
        passwordTextField.leadingAnchor.constraint(equalTo: self.leadingAnchor).isActive = true
        passwordTextField.trailingAnchor.constraint(equalTo: self.trailingAnchor).isActive = true
        passwordTextField.heightAnchor.constraint(equalToConstant: 44).isActive = true
        
        
        forgotPasswordButton.topAnchor.constraint(equalTo: passwordTextField.bottomAnchor, constant: 10).isActive = true
        forgotPasswordButton.trailingAnchor.constraint(equalTo: self.trailingAnchor).isActive = true
        forgotPasswordButton.heightAnchor.constraint(equalToConstant: 32).isActive = true
    }
    
    private func setStyles(textField: UITextField) {
        textField.borderStyle = .roundedRect
        textField.layer.borderWidth = 0.5
        textField.layer.borderColor = UIColor(red: 220/255, green: 220/255 , blue: 222/255, alpha: 1).cgColor
        textField.layer.cornerRadius = 5
        textField.backgroundColor = UIColor(red: 242/255, green: 243/255, blue: 245/255, alpha: 1)
    }
    
    @objc func forgotPasswordButtonPressed(sender: UIButton) {
        print(#function)
    }
    
    private func setRightView(textField: UITextField) {
        let iconView = UIImageView(frame: CGRect(x: 1, y: 7, width: 20, height: 20))
        if textField.isSecureTextEntry {
            iconView.image = UIImage(named: "insta_closedEye")
        } else {
            iconView.image = UIImage(named: "insta_openEye")
        }
        
        let iconContainerView: UIView = UIView(frame: CGRect(x: 5, y: 20, width: 30, height: 30))
        iconContainerView.addSubview(iconView)
        textField.rightView = iconContainerView
        textField.rightViewMode = .always
        
        let tap = UITapGestureRecognizer(target: self, action: #selector(showPassword))
        iconView.addGestureRecognizer(tap)
        iconView.isUserInteractionEnabled = true
    }
    
    
    @objc func showPassword() {
        if passwordTextField.isSecureTextEntry {
            passwordTextField.isSecureTextEntry = false
            setRightView(textField: passwordTextField)
        } else {
            passwordTextField.isSecureTextEntry = true
            setRightView(textField: passwordTextField)
        }
        
    }
    
}
