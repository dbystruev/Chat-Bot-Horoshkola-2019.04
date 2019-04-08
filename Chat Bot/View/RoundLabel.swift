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
        layer.cornerRadius = 10
    }
    
    override func drawText(in rect: CGRect) {
        let insets = UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10)
        super.drawText(in: rect.inset(by: insets))
    }
}
