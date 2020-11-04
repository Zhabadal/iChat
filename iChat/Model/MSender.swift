//
//  MSender.swift
//  iChat
//
//  Created by Alexandr Badmaev on 04.11.2020.
//

import Foundation
import MessageKit

struct MSender: SenderType, Equatable {
    var senderId: String
    var displayName: String
}
