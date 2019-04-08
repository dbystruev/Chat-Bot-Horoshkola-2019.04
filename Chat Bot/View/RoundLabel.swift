//
//  RoundLabel.swift
//  Chat Bot
//
//  Created by Denis Bystruev on 08/04/2019.
//  Copyright © 2019 Denis Bystruev. All rights reserved.
//

import UIKit

@IBDesignable class RoundLabel: UILabel {
    override func draw(_ rect: CGRect) {
        super.draw(rect)
        self.layer.cornerRadius = 5
    }
}
