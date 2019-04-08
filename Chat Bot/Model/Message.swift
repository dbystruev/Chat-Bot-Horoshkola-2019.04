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
    var text: String
    
    func answer() -> Message {
        var message = Message(isAnswer: true, timestamp: Date(), text: text)
        
        let question = message.text.lowercased()
        
        if question.contains("времени") {
            message.text = "Спросите: «Который час?»"
        }
        
        if question.contains("час") {
            message.text = "\(Date())"
        }
        
        if question.contains("зовут") {
            message.text = "Алиса"
        }
        
        if let number = Int(question) {
            message.text = "\(number + 1)"
        }
        
        return message
    }
    
    static func loadSample() -> [Message] {
        return [
            Message(isAnswer: true, timestamp: Date(), text: "Спрашивайте"),
        ]
    }
}
