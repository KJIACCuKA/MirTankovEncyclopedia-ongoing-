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
        
        TankModel(contry: UIImage(named: "italyTank") ?? UIImage(), type: UIImage(systemName: "arrowtriangle.down.fill") ?? UIImage(), tankLVL: "IX", tankIcon: UIImage(named: "standard") ?? UIImage(), tankName: "Prototipo Standard B", premium: false),
        
        TankModel(contry: UIImage(named: "italyTank") ?? UIImage(), type: UIImage(systemName: "arrowtriangle.down.fill") ?? UIImage(), tankLVL: "IX", tankIcon: UIImage(named: "prototipo6") ?? UIImage(), tankName: "Prototipo 6", premium: true),
        
        TankModel(contry: UIImage(named: "italyTank") ?? UIImage(), type: UIImage(systemName: "arrowtriangle.down.fill") ?? UIImage(), tankLVL: "IX", tankIcon: UIImage(named: "progetto66") ?? UIImage(), tankName: "Proggeto C50 mod. 66", premium: false),
        
        TankModel(contry: UIImage(named: "italyTank") ?? UIImage(), type: UIImage(systemName: "arrowtriangle.down.fill") ?? UIImage(), tankLVL: "IX", tankIcon: UIImage(named: "mk2") ?? UIImage(), tankName: "Controcarro 1 Mk. 2", premium: false),
        
        TankModel(contry: UIImage(named: "italyTank") ?? UIImage(), type: UIImage(systemName: "arrowtriangle.down.fill") ?? UIImage(), tankLVL: "VIII", tankIcon: UIImage(named: "p44") ?? UIImage(), tankName: "P.44 Pantera", premium: false),
        
        TankModel(contry: UIImage(named: "italyTank") ?? UIImage(), type: UIImage(systemName: "arrowtriangle.down.fill") ?? UIImage(), tankLVL: "VIII", tankIcon: UIImage(named: "progetto46") ?? UIImage(), tankName: "Progetto M3 mod. 46", premium: true),
        
        TankModel(contry: UIImage(named: "italyTank") ?? UIImage(), type: UIImage(systemName: "arrowtriangle.down.fill") ?? UIImage(), tankLVL: "VIII", tankIcon: UIImage(named: "mars") ?? UIImage(), tankName: "Марс", premium: true),
        
        TankModel(contry: UIImage(named: "italyTank") ?? UIImage(), type: UIImage(systemName: "arrowtriangle.down.fill") ?? UIImage(), tankLVL: "VIII", tankIcon: UIImage(named: "progetto54") ?? UIImage(), tankName: "Progetto CC55 mod. 54", premium: false),
        
        TankModel(contry: UIImage(named: "italyTank") ?? UIImage(), type: UIImage(systemName: "arrowtriangle.down.fill") ?? UIImage(), tankLVL: "VIII", tankIcon: UIImage(named: "bisonte") ?? UIImage(), tankName: "Bisonte C45", premium: true),
        
        TankModel(contry: UIImage(named: "italyTank") ?? UIImage(), type: UIImage(systemName: "arrowtriangle.down.fill") ?? UIImage(), tankLVL: "VIII", tankIcon: UIImage(named: "cc67b") ?? UIImage(), tankName: "SMV CC-67", premium: false),
        
        TankModel(contry: UIImage(named: "italyTank") ?? UIImage(), type: UIImage(systemName: "arrowtriangle.down.fill") ?? UIImage(), tankLVL: "VIII", tankIcon: UIImage(named: "vipera") ?? UIImage(), tankName: "SMV CC-64 Vipera", premium: true),
        
        TankModel(contry: UIImage(named: "italyTank") ?? UIImage(), type: UIImage(systemName: "arrowtriangle.down.fill") ?? UIImage(), tankLVL: "VII", tankIcon: UIImage(named: "p43ter") ?? UIImage(), tankName: "P.43 ter", premium: false),
        
        TankModel(contry: UIImage(named: "italyTank") ?? UIImage(), type: UIImage(systemName: "arrowtriangle.down.fill") ?? UIImage(), tankLVL: "VII", tankIcon: UIImage(named: "assalto_p88") ?? UIImage(), tankName: "Carro d'assalto P.88 ", premium: false),
        
        TankModel(contry: UIImage(named: "italyTank") ?? UIImage(), type: UIImage(systemName: "arrowtriangle.down.fill") ?? UIImage(), tankLVL: "VII", tankIcon: UIImage(named: "cc56") ?? UIImage(), tankName: "SMV CC-56", premium: false),
        
        TankModel(contry: UIImage(named: "italyTank") ?? UIImage(), type: UIImage(systemName: "arrowtriangle.down.fill") ?? UIImage(), tankLVL: "VI", tankIcon: UIImage(named: "p43bis") ?? UIImage(), tankName: "P.43 bis", premium: false),
        
        TankModel(contry: UIImage(named: "italyTank") ?? UIImage(), type: UIImage(systemName: "arrowtriangle.down.fill") ?? UIImage(), tankLVL: "VI", tankIcon: UIImage(named: "m43") ?? UIImage(), tankName: "Semovente M43 Bassotto", premium: false),
        
        TankModel(contry: UIImage(named: "italyTank") ?? UIImage(), type: UIImage(systemName: "arrowtriangle.down.fill") ?? UIImage(), tankLVL: "V", tankIcon: UIImage(named: "p43") ?? UIImage(), tankName: "P.43", premium: false),
        
        TankModel(contry: UIImage(named: "italyTank") ?? UIImage(), type: UIImage(systemName: "arrowtriangle.down.fill") ?? UIImage(), tankLVL: "V", tankIcon: UIImage(named: "semovente") ?? UIImage(), tankName: "Semovente M41", premium: false),
        
        TankModel(contry: UIImage(named: "italyTank") ?? UIImage(), type: UIImage(systemName: "arrowtriangle.down.fill") ?? UIImage(), tankLVL: "IV", tankIcon: UIImage(named: "p26") ?? UIImage(), tankName: "P26/40", premium: false),
        
        TankModel(contry: UIImage(named: "italyTank") ?? UIImage(), type: UIImage(systemName: "arrowtriangle.down.fill") ?? UIImage(), tankLVL: "III", tankIcon: UIImage(named: "m1542") ?? UIImage(), tankName: "M15/42", premium: false),
        
        TankModel(contry: UIImage(named: "italyTank") ?? UIImage(), type: UIImage(systemName: "arrowtriangle.down.fill") ?? UIImage(), tankLVL: "III", tankIcon: UIImage(named: "m16") ?? UIImage(), tankName: "M16/43 Sahariano", premium: true),
        
        TankModel(contry: UIImage(named: "italyTank") ?? UIImage(), type: UIImage(systemName: "arrowtriangle.down.fill") ?? UIImage(), tankLVL: "II", tankIcon: UIImage(named: "l6_40") ?? UIImage(), tankName: "L6/40", premium: false),
        
        TankModel(contry: UIImage(named: "italyTank") ?? UIImage(), type: UIImage(systemName: "arrowtriangle.down.fill") ?? UIImage(), tankLVL: "II", tankIcon: UIImage(named: "m14") ?? UIImage(), tankName: "M14/41", premium: false),
        
        TankModel(contry: UIImage(named: "italyTank") ?? UIImage(), type: UIImage(systemName: "arrowtriangle.down.fill") ?? UIImage(), tankLVL: "I", tankIcon: UIImage(named: "fiat3000") ?? UIImage(), tankName: "Fiat 3000", premium: false),
    ]
    
    static var filteredItalyTanks: [TankModel] = []
}
