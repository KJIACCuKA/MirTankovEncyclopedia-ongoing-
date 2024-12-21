//
//  NationsCollectionViewCell.swift
//  MirTankovEncyclopedia
//
//  Created by Никита Козловский on 21.12.2024.
//

import UIKit

class NationsCollectionViewCell: UICollectionViewCell {
    
    private lazy var nationNameLabel = UILabel(text: "test", textColor: .lightGray, font: .italicSystemFont(ofSize: 12))
    
    private lazy var nationImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.backgroundColor = .clear
        imageView.contentMode = .scaleAspectFit
        imageView.clipsToBounds = true
        return imageView
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupUI()
        setupConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupUI() {
        self.addSubview(nationNameLabel)
        self.addSubview(nationImageView)
    }
    
    private func setupConstraints() {
        NSLayoutConstraint.activate([
            nationImageView.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            nationImageView.topAnchor.constraint(equalTo: self.topAnchor),
            nationImageView.heightAnchor.constraint(equalToConstant: 70),
            nationImageView.widthAnchor.constraint(equalToConstant: 70),
            
            nationNameLabel.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            nationNameLabel.topAnchor.constraint(equalTo: nationImageView.bottomAnchor, constant: 10)
            ])
    }
    
    func setupInfoForCell(indexPath: IndexPath) {
        let nations = NationsAndTypes.nations[indexPath.row]
        nationImageView.image = nations.image
        nationNameLabel.text = nations.name
    }
    
}
