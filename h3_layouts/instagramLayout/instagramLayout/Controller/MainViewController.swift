//
//  ViewController.swift
//  instagramLayout
//
//  Created by Meruyert Tastandiyeva on 1/27/21.
//

import UIKit

class MainViewController: UIViewController {
    
    
    lazy var cancelButtonView: CancelButtonView = {
        let view = CancelButtonView()
        return view
    }()
    
    lazy var dynamicView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    lazy var instagramLogoView: InstagramLogoView = {
        let view = InstagramLogoView()
        return view
    }()

    
    lazy var credentialsEnterView: CredentialsEnterView = {
        let view = CredentialsEnterView()
        return view
    }()
    
    
    lazy var enterButtonView: EnterButtonView = {
        let view = EnterButtonView()
        return view
    }()
    
    
    lazy var orLabelView: BreakingLinesView = {
        let view = BreakingLinesView()
        return view
    }()
    
    
    lazy var enterByFacebookView: EnterByFacebookView = {
        let view = EnterByFacebookView()
        return view
    }()
    
    lazy var secondDynamicView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .red
        return view
    }()
    
    lazy var longLineBreakView: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor(red: 191/255, green: 191/255, blue: 191/255, alpha: 1)
        return view
    }()
    
    lazy var registerButtonView: RegisterButtonView = {
        let view = RegisterButtonView()
        return view
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = .white
        
        setUpViews()
        
        //checkCredentials()
    }
    
    
    private func setUpViews() {
        [cancelButtonView, dynamicView, instagramLogoView, credentialsEnterView, enterButtonView, orLabelView, enterByFacebookView, longLineBreakView, registerButtonView].forEach {
            self.view.addSubview($0)
            $0.translatesAutoresizingMaskIntoConstraints = false
        }
        
        cancelButtonView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 12).isActive = true
        cancelButtonView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20).isActive = true
        cancelButtonView.widthAnchor.constraint(equalToConstant: 20).isActive = true
        cancelButtonView.heightAnchor.constraint(equalToConstant: 20).isActive = true
        cancelButtonView.setParameters(imageName: "instagram_cancel")
        
        dynamicView.topAnchor.constraint(equalTo: cancelButtonView.bottomAnchor).isActive = true
        dynamicView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.07).isActive = true
        
        instagramLogoView.topAnchor.constraint(equalTo: dynamicView.bottomAnchor).isActive = true
        instagramLogoView.widthAnchor.constraint(equalToConstant: 220).isActive = true
        instagramLogoView.heightAnchor.constraint(equalToConstant: 100).isActive = true
        instagramLogoView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        instagramLogoView.setParameters(imageName: "instagram_logo")
        
        credentialsEnterView.topAnchor.constraint(equalTo: instagramLogoView.bottomAnchor, constant: 80).isActive = true
        credentialsEnterView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        credentialsEnterView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20).isActive = true
        credentialsEnterView.heightAnchor.constraint(equalToConstant: 150).isActive = true
        credentialsEnterView.setParameters(loginString: "Телефон, имя пользователя и эл. адрес", passwordString: "Пароль")
        
        enterButtonView.topAnchor.constraint(equalTo: credentialsEnterView.bottomAnchor, constant: 30).isActive = true
        enterButtonView.heightAnchor.constraint(equalToConstant: 44).isActive = true
        enterButtonView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        enterButtonView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20).isActive = true
        enterButtonView.setParameters(text: "Войти")
        
        orLabelView.topAnchor.constraint(equalTo: enterButtonView.bottomAnchor, constant: 25).isActive = true
        orLabelView.heightAnchor.constraint(equalToConstant: 32).isActive = true
        orLabelView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        orLabelView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20).isActive = true
        
        enterByFacebookView.topAnchor.constraint(equalTo: orLabelView.bottomAnchor, constant: 25).isActive = true
        enterByFacebookView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 90).isActive = true
        enterByFacebookView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -70).isActive = true
        enterByFacebookView.heightAnchor.constraint(equalToConstant: 32).isActive = true
        enterByFacebookView.setParameters(imageName: "insta_facebook", title: "Войти через Facebook")

        longLineBreakView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -50).isActive = true
        longLineBreakView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        longLineBreakView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        longLineBreakView.heightAnchor.constraint(equalToConstant: 0.2).isActive = true
        
        registerButtonView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor).isActive = true
        registerButtonView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 35).isActive = true
        registerButtonView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -35).isActive = true
        registerButtonView.heightAnchor.constraint(equalToConstant: 32).isActive = true
    }
    
//    func checkCredentials(_ loginTextField: UITextField, _ passwordField: UITextField) {
//        loginTextField.resignFirstResponder()
//        passwordField.resignFirstResponder()
//
//        guard let login = loginTextField.text, let password = passwordField.text, !login.isEmpty, !password.isEmpty, password.count >= 8, password.prefix(1).uppercased() == password.prefix(1) else {
//            displayMyAlertMessage()
//            return
//        }
//
//    }
//
//    func displayMyAlertMessage(){
//        let alert = UIAlertController(title: "Alert", message: "Invalid credentials", preferredStyle: UIAlertController.Style.alert)
//        let okAction = UIAlertAction(title: "Ok", style: UIAlertAction.Style.default, handler: nil)
//        alert.addAction(okAction)
//        self.present(alert, animated: true, completion: nil)
//     }
}

