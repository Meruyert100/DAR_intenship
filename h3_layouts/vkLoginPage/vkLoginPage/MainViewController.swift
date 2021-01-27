//
//  ViewController.swift
//  vkLoginPage
//
//  Created by Meruyert Tastandiyeva on 1/26/21.
//

import UIKit

class MainViewController: UIViewController {

    lazy var cancelButton: UIButton = {
        let button = UIButton()
        button.setBackgroundImage(UIImage(named: "vk_cancel"), for: .normal)
        return button
    }()
    
    lazy var vkconnectImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "vk_connect")
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()
    
    lazy var firstDynamicView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .red
        return view
    }()
    
    lazy var logoImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "vk_logo")
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()
    
    lazy var secondDynamicView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .red
        return view
    }()

    lazy var loginTextField: UITextField = {
        let textField = UITextField()
        textField.placeholder = "Email или телефон"
        textField.borderStyle = .roundedRect
        textField.layer.borderWidth = 0.5
        textField.layer.borderColor = UIColor(red: 220/255, green: 220/255 , blue: 222/255, alpha: 1).cgColor
        textField.layer.cornerRadius = 5
        textField.layer.maskedCorners = [ .layerMinXMinYCorner, .layerMaxXMinYCorner]
        textField.backgroundColor = UIColor(red: 242/255, green: 243/255, blue: 245/255, alpha: 1)
        return textField
    }()
    
    lazy var passwordTextField: UITextField = {
        let textField = UITextField()
        textField.placeholder = "Пароль"
        textField.borderStyle = .roundedRect
        textField.layer.borderWidth = 0.5
        textField.layer.borderColor = UIColor(red: 220/255, green: 220/255 , blue: 222/255, alpha: 1).cgColor
        textField.layer.cornerRadius = 5
        textField.layer.maskedCorners = [ .layerMaxXMaxYCorner, .layerMinXMaxYCorner]
        textField.backgroundColor = UIColor(red: 242/255, green: 243/255, blue: 245/255, alpha: 1)
        textField.isSecureTextEntry = true
        
        let iconView = UIImageView(frame: CGRect(x: 1, y: 7, width: 20, height: 20))
        iconView.image = UIImage(named: "vk_question")
        let iconContainerView: UIView = UIView(frame: CGRect(x: 5, y: 20, width: 30, height: 30))
        iconContainerView.addSubview(iconView)
        textField.rightView = iconContainerView
        textField.rightViewMode = .always
        
        let tap = UITapGestureRecognizer(target: self, action: #selector(showPassword))
        iconView.addGestureRecognizer(tap)
        iconView.isUserInteractionEnabled = true
        
        return textField
    }()
    
    lazy var enterButton: UIButton = {
        let button = UIButton()
        button.setTitle("Войти", for: .normal)
        button.backgroundColor = UIColor(red: 168/255, green: 194/255, blue: 229/255, alpha: 1)
        button.layer.cornerRadius = 8
        button.titleLabel?.textColor = .white
        button.addTarget(self, action: #selector(enterButtonPressed), for: .touchUpInside)
        return button
    }()
    
    lazy var thirdDynamicView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .red
        return view
    }()
    
    lazy var enterByAppleView: AppleLoginView = {
        let view = AppleLoginView()
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = .white
        
        setUpViews()
        
    }

    private func setUpViews() {
        [cancelButton, vkconnectImageView, firstDynamicView, logoImageView, secondDynamicView, loginTextField, passwordTextField, enterButton, thirdDynamicView, enterByAppleView].forEach {
            self.view.addSubview($0)
            $0.translatesAutoresizingMaskIntoConstraints = false
        }
        
        cancelButton.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 33).isActive = true
        cancelButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16).isActive = true
        cancelButton.widthAnchor.constraint(equalToConstant: 20).isActive = true
        cancelButton.heightAnchor.constraint(equalToConstant: 20).isActive = true
        
        vkconnectImageView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor).isActive = true
        vkconnectImageView.leadingAnchor.constraint(equalTo: cancelButton.trailingAnchor, constant: 5).isActive = true
        vkconnectImageView.widthAnchor.constraint(equalToConstant: 340).isActive = true
        vkconnectImageView.heightAnchor.constraint(equalToConstant: 87).isActive = true
        vkconnectImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
        firstDynamicView.topAnchor.constraint(equalTo: cancelButton.bottomAnchor).isActive = true
        firstDynamicView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.07).isActive = true
        
        logoImageView.topAnchor.constraint(equalTo: firstDynamicView.bottomAnchor).isActive = true
        logoImageView.widthAnchor.constraint(equalToConstant: 110).isActive = true
        logoImageView.heightAnchor.constraint(equalToConstant: 110).isActive = true
        logoImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
        secondDynamicView.topAnchor.constraint(equalTo: logoImageView.bottomAnchor).isActive = true
        secondDynamicView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.04).isActive = true
        
        loginTextField.topAnchor.constraint(equalTo: secondDynamicView.bottomAnchor).isActive = true
        loginTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        loginTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20).isActive = true
        loginTextField.heightAnchor.constraint(equalToConstant: 44).isActive = true
        
        passwordTextField.topAnchor.constraint(equalTo: loginTextField.bottomAnchor).isActive = true
        passwordTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        passwordTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20).isActive = true
        passwordTextField.heightAnchor.constraint(equalToConstant: 44).isActive = true
        
        enterButton.topAnchor.constraint(equalTo: passwordTextField.bottomAnchor, constant: 30).isActive = true
        enterButton.heightAnchor.constraint(equalToConstant: 44).isActive = true
        enterButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        enterButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20).isActive = true
        
        thirdDynamicView.topAnchor.constraint(equalTo: enterButton.bottomAnchor).isActive = true
        thirdDynamicView.bottomAnchor.constraint(equalTo: enterByAppleView.topAnchor).isActive = true
        thirdDynamicView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.3).isActive = true
        
        enterByAppleView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -40).isActive = true
        enterByAppleView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        enterByAppleView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20).isActive = true
        enterByAppleView.heightAnchor.constraint(equalToConstant: 44).isActive = true
        enterByAppleView.setParameters(imageName: "vk_apple", title: "Войти через Apple")
        
    }

    @objc func enterButtonPressed() {
        print("Button was pressed")
    }

    @objc func showPassword() {
        if passwordTextField.isSecureTextEntry {
            passwordTextField.isSecureTextEntry = false
        } else {
            passwordTextField.isSecureTextEntry = true
        }
        print("Question mark was tapped")
    }
}


