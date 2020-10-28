//
//  UIView + Extension.swift
//  iChat
//
//  Created by Alexandr Badmaev on 28.10.2020.
//

import UIKit

extension UIView {
    
    func applyGradients(cornerRadius: CGFloat) {
        backgroundColor = nil
        layoutIfNeeded()
        
        let gradientView = GradientView(from: .topTrailing, to: .bottomLeading, startColor: #colorLiteral(red: 0.7882352941, green: 0.631372549, blue: 0.9411764706, alpha: 1), endColor: #colorLiteral(red: 0.4784313725, green: 0.6980392157, blue: 0.9215686275, alpha: 1))
        
        if let gradientLayer = gradientView.layer.sublayers?.first as? CAGradientLayer {
            gradientLayer.frame = bounds
            gradientLayer.cornerRadius = cornerRadius
            layer.insertSublayer(gradientLayer, at: 0)
        }
    }
    
}
