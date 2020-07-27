//
//  SignUpVC.swift
//  BearsApp
//
//  Created by shaimaa on 05/05/1441 AH.
//  Copyright © 1441 shaimaa. All rights reserved.
//

import UIKit

class SignUpVC: UIViewController {
        // MARK: variables
    lazy var titleLbl: UILabel = {
             $0.changeUILabel(title: "SignUp", size: 20)
             return $0
         }(UILabel())
    
    lazy var singUpBtn: UIButton = {
        $0.changeUIButton(title: "Sign Up", color: colors.button)
            
                return $0
        //             signUpButton.addTarget(self, action:#selector(didPresssignUpButton), for: .touchUpInside)
        
    }(UIButton(type: .system))
    
    lazy var singInBtn: UIButton = {
        $0.changeUIButton(title: "Do you have an account? Sign in", color: .clear)
        $0.addTarget(self, action:#selector(didPresssignInButton), for: .touchUpInside)
              
        return $0
    }(UIButton(type: .system))
    
    lazy var nameTextFiled: myTextView = {
        $0.textFiled.placeholder = "User Name"
        $0.icon.image = UIImage(named: "user")
        return $0
    }(myTextView())
    lazy var emailTextFiled: myTextView = {
           $0.textFiled.placeholder = "Email"
         $0.icon.image = UIImage(named: "email")
           return $0
       }(myTextView())
    lazy var passwordTextFiled: myTextView = {
           $0.textFiled.placeholder = "Password"
         $0.icon.image = UIImage(named: "password")
           return $0
       }(myTextView())
    lazy var birthdayTextFiled: myTextView = {
           $0.textFiled.placeholder = "Birthday"
         $0.icon.image = UIImage(named: "birthday")
           return $0
       }(myTextView())
    
    lazy var stackView : UIStackView = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.axis = .vertical
        $0.spacing = 10
        $0.distribution = .fillEqually
        return $0
    }(UIStackView())
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view.setGradiantView()
        
        view.addSubview(titleLbl)
        view.addSubview(singInBtn)
        view.addSubview(singUpBtn)
        //stack
        view.addSubview(stackView)
        stackView.addArrangedSubview(nameTextFiled)
        stackView.addArrangedSubview(emailTextFiled)
        stackView.addArrangedSubview(passwordTextFiled)
        stackView.addArrangedSubview(birthdayTextFiled)
 
        NSLayoutConstraint.activate([
        
            self.titleLbl.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor, constant: 40),
            self.titleLbl.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            
            
            self.stackView.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            self.stackView.topAnchor.constraint(equalTo: self.titleLbl.bottomAnchor, constant: 40),
             self.stackView.widthAnchor.constraint(equalTo: self.view.widthAnchor, constant: -80),
        
            
            self.emailTextFiled.heightAnchor.constraint(equalToConstant: 50),
            self.passwordTextFiled.heightAnchor.constraint(equalToConstant: 50),
            self.emailTextFiled.heightAnchor.constraint(equalToConstant: 50),
            self.birthdayTextFiled.heightAnchor.constraint(equalToConstant: 50),
            
            
            self.singUpBtn.topAnchor.constraint(equalTo: self.stackView.bottomAnchor, constant: 30),
            self.singUpBtn.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            self.singUpBtn.widthAnchor.constraint(equalToConstant: self.view.frame.width / 1.2),
            self.singUpBtn.heightAnchor.constraint(equalToConstant: 50),
            
            
            
            self.singInBtn.topAnchor.constraint(equalTo: self.singUpBtn.bottomAnchor, constant: 5),
            self.singInBtn.widthAnchor.constraint(equalToConstant: self.view.frame.width),
            self.singInBtn.heightAnchor.constraint(equalToConstant: 30),
            self.singInBtn.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
        
        ])
    }

     @objc func didPresssignInButton(_ sender : UIButton ){
        let VC = SignInVC()
        VC.modalPresentationStyle = .fullScreen
        dismiss(animated: true, completion: nil)
      //  self.present(VC, animated: true , completion: nil)
          print("move")
      
    }
    

   
}
