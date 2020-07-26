//
//  XUIWithoutStoryboard.swift
//  BearsApp
//
//  Created by shaimaa on 19/04/1441 AH.
//  Copyright © 1441 shaimaa. All rights reserved.
//

import UIKit


class myTextView : UIView {
    
    
    // icon variable
    var icon: UIImageView = {
        let icon = UIImageView()
        icon.contentMode = .scaleAspectFit
        icon.translatesAutoresizingMaskIntoConstraints = false
        return icon
    }()
    
    
    
    
    let textFiled : UITextField = {
        
        
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.tintColor = colors.titlesColor
        $0.textColor = colors.titlesColor
       
        $0.backgroundColor = colors.textFieldsBackground
        $0.textAlignment = .center
        $0.font = UIFont(name: "Futura", size: 20)
        $0.attributedPlaceholder = NSAttributedString(string: "" , attributes: [NSAttributedString.Key.foregroundColor: colors.button])
        return $0
    }(UITextField())
    
     
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.backgroundColor = UIColor.white.withAlphaComponent(0.1)
        self.layer.borderWidth = 1
        self.layer.borderColor = UIColor.white.cgColor
        self.layer.cornerRadius = 25
        self.layer.masksToBounds = true
        self.translatesAutoresizingMaskIntoConstraints = false
        
        //add views
        self.addSubview(textFiled)
        self.addSubview(icon)
        
        NSLayoutConstraint.activate([
            textFiled.topAnchor.constraint(equalTo: self.topAnchor),
            textFiled.bottomAnchor.constraint(equalTo: self.bottomAnchor),
            textFiled.rightAnchor.constraint(equalTo: self.rightAnchor),
            textFiled.leftAnchor.constraint(equalTo: self.leftAnchor),
            textFiled.heightAnchor.constraint(equalToConstant: 50),
            
            
            self.icon.leftAnchor.constraint(equalTo: self.textFiled.leftAnchor,constant: 10),
            self.icon.heightAnchor.constraint(equalToConstant: 30),
            self.icon.widthAnchor.constraint(equalToConstant: 30),
            self.icon.centerYAnchor.constraint(equalTo: self.textFiled.centerYAnchor)
            
        ])
        
}
    
 
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
}

}
