//
//  MessageCell.swift
//  Chat Bot
//
//  Created by Denis Bystruev on 08/04/2019.
//  Copyright © 2019 Denis Bystruev. All rights reserved.
//

import UIKit

class MessageCell: UITableViewCell {
    @IBOutlet weak var timestampLabel: UILabel!
    @IBOutlet weak var answerLabel: RoundLabel!
    @IBOutlet weak var questionLabel: RoundLabel!
}
