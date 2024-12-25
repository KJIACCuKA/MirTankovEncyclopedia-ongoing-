//
//  ItalyTanks.swift
//  MirTankovEncyclopedia
//
//  Created by Никита Козловский on 25.12.2024.
//

import UIKit

enum ItalyTanks {
    static let italyTanks: [TankModel] = [
        
        TankModel(contry: UIImage(named: "italyTank") ?? UIImage(), type: UIImage(systemName: "arrowtriangle.down.fill") ?? UIImage(), tankLVL: "X", tankIcon: UIImage(named: "progetto65") ?? UIImage(), tankName: "Proggeto M40 mod. 65", premium: false),
        
        TankModel(contry: UIImage(named: "italyTank") ?? UIImage(), type: UIImage(systemName: "arrowtriangle.down.fill") ?? UIImage(), tankLVL: "X", tankIcon: UIImage(named: "lion") ?? UIImage(), tankName: "Lion", premium: true),
        
        TankModel(contry: UIImage(named: "italyTank") ?? UIImage(), type: UIImage(systemName: "arrowtriangle.down.fill") ?? UIImage(), tankLVL: "X", tankIcon: UIImage(named: "carro") ?? UIImage(), tankName: "Carro da Combattimento 45 T", premium: true),
        
        TankModel(contry: UIImage(named: "italyTank") ?? UIImage(), type: UIImage(systemName: "arrowtriangle.down.fill") ?? UIImage(), tankLVL: "X", tankIcon: UIImage(named: "rinoceronte") ?? UIImage(), tankName: "Rinoceronte", premium: false),
        
        TankModel(contry: UIImage(named: "italyTank") ?? UIImage(), type: UIImage(systemName: "arrowtriangle.down.fill") ?? UIImage(), tankLVL: "X", tankIcon: UIImage(named: "mino") ?? UIImage(), tankName: "Controcarro 3 Minotauro", premium: false),
        
        
        
    ]
}
