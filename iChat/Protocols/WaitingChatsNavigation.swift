//
//  WaitingChatsNavigation.swift
//  iChat
//
//  Created by Alexandr Badmaev on 03.11.2020.
//

import Foundation

protocol WaitingChatsNavigation: class {
    func removeWaitingChat(chat: MChat)
    func chatToActive(chat: MChat)
}
