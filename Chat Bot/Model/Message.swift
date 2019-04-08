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
    
    func answer() -> Message {
        let message = Message(isAnswer: true, timestamp: Date(), text: text)
        
        return message
    }
    
    static func loadSample() -> [Message] {
        return [
            Message(isAnswer: true, timestamp: Date(), text: "Спрашивайте"),
        ]
    }
}
