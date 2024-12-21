//
//  UIImageView.swift
//  MirTankovEncyclopedia
//
//  Created by Никита Козловский on 21.12.2024.
//

import UIKit

extension UIImageView {
    
    convenience init(image: UIImage, contentMode: UIView.ContentMode) {
        self.init()
        
        self.image = image
        self.translatesAutoresizingMaskIntoConstraints = false
        self.backgroundColor = .clear
        self.contentMode = contentMode
    }
}
