//
//  UIButton + Extension.swift
//  iChat
//
//  Created by Alexandr Badmaev on 22.10.2020.
//

import UIKit

extension UIButton {
    
    convenience init(title: String,
                     titleColor: UIColor,
                     backgroundColor: UIColor,
                     font: UIFont? = .avenir20(),
                     isShadow: Bool = false,
                     cornerRadius: CGFloat = 4) {
        
        self.init(type: .system)
        setTitle(title, for: .normal)
        setTitleColor(titleColor, for: .normal)
        self.backgroundColor = backgroundColor
        titleLabel?.font = font
        layer.cornerRadius = cornerRadius
        
        if isShadow {
            layer.shadowColor = UIColor.black.cgColor
            layer.shadowRadius = 4
            layer.shadowOpacity = 0.2
            layer.shadowOffset = CGSize(width: 0, height: 4)
        }
    }
    
    func customGoogleButton() {
        let googleLogo = UIImageView(image: #imageLiteral(resourceName: "googleLogo"), contentMode: .scaleAspectFit)
        googleLogo.translatesAutoresizingMaskIntoConstraints = false
        addSubview(googleLogo)
        googleLogo.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 24).isActive = true
        googleLogo.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
    }
    
}
