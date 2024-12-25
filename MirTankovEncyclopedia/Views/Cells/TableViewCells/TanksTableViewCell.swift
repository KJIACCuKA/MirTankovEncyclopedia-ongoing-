//
//  TanksTableViewCell.swift
//  MirTankovEncyclopedia
//
//  Created by Никита Козловский on 21.12.2024.
//

import UIKit

final class TanksTableViewCell: UITableViewCell {
    
    private lazy var flagImageView = UIImageView(image: UIImage(), contentMode: .scaleAspectFit, tintColor: .lightGray)
    private lazy var iconImageView = UIImageView(image: UIImage(), contentMode: .scaleAspectFit, tintColor: .lightGray)
    private lazy var typeImageView = UIImageView(image: UIImage(), contentMode: .scaleAspectFit, tintColor: .lightGray)
    
    private lazy var lvlLabel = UILabel(text: "", textColor: .white, font: .systemFont(ofSize: 12), numberOfLines: .bitWidth)
    private lazy var tankNameLabel = UILabel(text: "", textColor: .white, font: .systemFont(ofSize: 12), numberOfLines: .bitWidth)
    
    
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
        self.addSubview(flagImageView)
        self.addSubview(iconImageView)
        self.addSubview(typeImageView)
        self.addSubview(lvlLabel)
        self.addSubview(tankNameLabel)
    }
    
    private func setupConstraints() {
        NSLayoutConstraint.activate([
            
            flagImageView.centerYAnchor.constraint(equalTo: self.centerYAnchor),
            flagImageView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 20),
            
            typeImageView.centerYAnchor.constraint(equalTo: self.centerYAnchor),
            typeImageView.leadingAnchor.constraint(equalTo: flagImageView.trailingAnchor, constant: 20),
            
            lvlLabel.centerYAnchor.constraint(equalTo: self.centerYAnchor),
            lvlLabel.leadingAnchor.constraint(equalTo: typeImageView.trailingAnchor, constant: 20),
            
            iconImageView.centerYAnchor.constraint(equalTo: self.centerYAnchor),
            iconImageView.leadingAnchor.constraint(equalTo: lvlLabel.trailingAnchor, constant: 20),
            
            tankNameLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -50),
            tankNameLabel.centerYAnchor.constraint(equalTo: self.centerYAnchor),
            
            flagImageView.heightAnchor.constraint(equalToConstant: 30),
            flagImageView.widthAnchor.constraint(equalToConstant: 30),
            typeImageView.heightAnchor.constraint(equalToConstant: 20),
            typeImageView.widthAnchor.constraint(equalToConstant: 20),
            iconImageView.heightAnchor.constraint(equalToConstant: 50),
            iconImageView.widthAnchor.constraint(equalToConstant: 50)
        ])
    }
    
    // MARK: - Public Methods
    
    func setupInfoForTanks(tankInfo: [TankModel], indexPath: IndexPath) {
        let tankInfo = tankInfo[indexPath.row]
        flagImageView.image = tankInfo.contry
        typeImageView.image = tankInfo.type
        lvlLabel.text = tankInfo.tankLVL
        iconImageView.image = tankInfo.tankIcon
        tankNameLabel.text = tankInfo.tankName
    }
    
}
