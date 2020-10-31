//
//  AuthNavigatingDelegate.swift
//  iChat
//
//  Created by Alexandr Badmaev on 29.10.2020.
//

import Foundation

protocol AuthNavigatingDelegate: class {
    func toLoginVC()
    func toSignUpVC()
}
