//
//  SectionHeader.swift
//  MirTankovEncyclopedia
//
//  Created by Никита Козловский on 21.12.2024.
//

import UIKit

final class SectionHeader: UICollectionReusableView {
    private lazy var titleLabel = UILabel(text: "test", textColor: .white, font: .boldSystemFont(ofSize: 20))
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        addSubview(titleLabel)
        
        NSLayoutConstraint.activate([
            titleLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16),
            titleLabel.trailingAnchor.constraint(equalTo: trailingAnchor),
            titleLabel.topAnchor.constraint(equalTo: topAnchor, constant: 10),
            titleLabel.bottomAnchor.constraint(equalTo: bottomAnchor)
        ])
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    func config(with title: String) {
        titleLabel.text = title
    }
}
