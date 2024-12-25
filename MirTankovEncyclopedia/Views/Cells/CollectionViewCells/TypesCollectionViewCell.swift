//
//  TypesCollectionView.swift
//  MirTankovEncyclopedia
//
//  Created by Никита Козловский on 21.12.2024.
//

import UIKit

class TypesCollectionViewCell: UICollectionViewCell {
    
    // MARK: - Private Properties
    
    private lazy var typeNameLabel = UILabel(text: "test", textColor: .lightGray, font: .italicSystemFont(ofSize: 12), numberOfLines: 2)
    
    private lazy var typeImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.backgroundColor = .clear
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()
    
    // MARK: - Initializers
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupUI()
        setupConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Private Methods
    
    private func setupUI() {
        self.addSubview(typeNameLabel)
        self.addSubview(typeImageView)
    }
    
    private func setupConstraints() {
        NSLayoutConstraint.activate([
            typeImageView.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            typeImageView.topAnchor.constraint(equalTo: self.topAnchor),
            typeImageView.heightAnchor.constraint(equalToConstant: 70),
            typeImageView.widthAnchor.constraint(equalToConstant: 70),
            
            typeNameLabel.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            typeNameLabel.topAnchor.constraint(equalTo: typeImageView.bottomAnchor, constant: 10)
            ])
    }
    
    // MARK: - Public Methods
    
    func setupInfoForCell(indexPath: IndexPath) {
        let types = NationsAndTypes.types[indexPath.row]
        typeImageView.image = types.image
        typeNameLabel.text = types.name
    }
    
}
