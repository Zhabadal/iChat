//
//  SelfConfiguringCell.swift
//  iChat
//
//  Created by Alexandr Badmaev on 28.10.2020.
//

import Foundation

protocol SelfConfiguringCell {
    static var reuseId: String { get }
    func configure(with value: MChat)
}
