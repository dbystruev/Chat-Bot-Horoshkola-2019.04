//
//  Message.swift
//  Chat Bot
//
//  Created by Denis Bystruev on 08/04/2019.
//  Copyright © 2019 Denis Bystruev. All rights reserved.
//

import Foundation

struct Message {
    let isAnswer: Bool
    let timestamp: Date
    let text: String
    
    static func loadSample() -> [Message] {
        return [
            Message(isAnswer: true, timestamp: Date(), text: "Спрашивайте"),
            Message(isAnswer: false, timestamp: Date(), text: "Отвечаем"),
        ]
    }
}