//
//  UILabel.swift
//  MirTankovEncyclopedia
//
//  Created by Никита Козловский on 21.12.2024.
//

import UIKit

extension UILabel {
    
    convenience init(text: String, textColor: UIColor, font: UIFont) {
        self.init()
        
        self.text = text
        self.translatesAutoresizingMaskIntoConstraints = false
        self.textColor = textColor
        self.font = font
        self.numberOfLines = .bitWidth
    }
}
