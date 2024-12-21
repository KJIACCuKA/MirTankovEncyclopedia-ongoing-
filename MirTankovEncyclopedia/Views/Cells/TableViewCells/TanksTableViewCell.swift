//
//  TanksTableViewCell.swift
//  MirTankovEncyclopedia
//
//  Created by Никита Козловский on 21.12.2024.
//

import UIKit

final class TanksTableViewCell: UITableViewCell {
    
    private lazy var flagImageView = UIImageView(image: UIImage(), contentMode: .scaleAspectFit)
    private lazy var iconImageView = UIImageView(image: UIImage(), contentMode: .scaleAspectFit)
    private lazy var typeImageView = UIImageView(image: UIImage(), contentMode: .scaleAspectFit)
    
    private lazy var lvlLabel = UILabel(text: "", textColor: .white, font: .systemFont(ofSize: 12))
    private lazy var tankNameLabel = UILabel(text: "", textColor: .white, font: .systemFont(ofSize: 12))
    
    private lazy var horizontalStackView = UIStackView(arrangedSubviews: [flagImageView, typeImageView, lvlLabel, iconImageView, tankNameLabel], axis: .horizontal, spacing: 1, distribution: .equalCentering)
    
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        self.backgroundColor = .clear
        setupUI()
        setupConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupUI() {
        self.addSubview(horizontalStackView)
    }
    
    private func setupConstraints() {
        NSLayoutConstraint.activate([
            horizontalStackView.topAnchor.constraint(equalTo: self.topAnchor, constant: 15),
            horizontalStackView.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -15),
            horizontalStackView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16),
            horizontalStackView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -70),
            
            flagImageView.heightAnchor.constraint(equalToConstant: 70),
            flagImageView.widthAnchor.constraint(equalToConstant: 70),
            typeImageView.heightAnchor.constraint(equalToConstant: 20),
            typeImageView.widthAnchor.constraint(equalToConstant: 20),
            iconImageView.heightAnchor.constraint(equalToConstant: 50),
            iconImageView.widthAnchor.constraint(equalToConstant: 50)
        ])
    }
    
    // MARK: - Public Methods
    
    func setupInfoForCell(indexPath: IndexPath) {
        let tankInfo = SwedenTanks.swedenTanks[indexPath.row]
        flagImageView.image = tankInfo.contry
        typeImageView.image = tankInfo.type
        lvlLabel.text = tankInfo.tankLVL
        iconImageView.image = tankInfo.tankIcon
        tankNameLabel.text = tankInfo.tankName
    }
    
}
