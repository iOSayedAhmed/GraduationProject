//
//  ConversationsModels.swift
//  ChatApp
//
//  Created by iOSayed on 8/5/20.
//  Copyright © 2020 iOSayed All rights reserved.
//

import Foundation

struct Conversation {
    let id: String
    let name: String
    let otherUserEmail: String
    let latestMessage: LatestMessage
}
struct LatestMessage {
    let date: String
    let text: String
    let isRead: Bool
}
