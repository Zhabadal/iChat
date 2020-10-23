//
//  UISegmentedControl + Extensions.swift
//  iChat
//
//  Created by Alexandr Badmaev on 23.10.2020.
//

import UIKit

extension UISegmentedControl {
    
    convenience init(first: String, second: String) {
        self.init()
        
        insertSegment(withTitle: first, at: 0, animated: true)
        insertSegment(withTitle: second, at: 1, animated: true)
        selectedSegmentIndex = 0
    }
    
}
