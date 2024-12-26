//
//  CzechTanks.swift
//  MirTankovEncyclopedia
//
//  Created by Никита Козловский on 26.12.2024.
//

import UIKit

enum CzechTanks {
    static let czechTanks: [TankModel] = [
        
        TankModel(contry: UIImage(named: "czechTank") ?? UIImage(), type: UIImage(systemName: "arrowtriangle.down.fill") ?? UIImage(), tankLVL: "X", tankIcon: UIImage(named: "t5051") ?? UIImage(), tankName: "TVP T 50/51", premium: false),
        
        TankModel(contry: UIImage(named: "czechTank") ?? UIImage(), type: UIImage(systemName: "arrowtriangle.down.fill") ?? UIImage(), tankLVL: "X", tankIcon: UIImage(named: "vz55") ?? UIImage(), tankName: "Vz. 55", premium: false),
        
        TankModel(contry: UIImage(named: "czechTank") ?? UIImage(), type: UIImage(systemName: "arrowtriangle.down.fill") ?? UIImage(), tankLVL: "X", tankIcon: UIImage(named: "vz55gw") ?? UIImage(), tankName: "Gothic Warrior", premium: true),
        
        TankModel(contry: UIImage(named: "czechTank") ?? UIImage(), type: UIImage(systemName: "arrowtriangle.down.fill") ?? UIImage(), tankLVL: "IX", tankIcon: UIImage(named: "tvpt50") ?? UIImage(), tankName: "Škoda T 50", premium: false),
        
        TankModel(contry: UIImage(named: "czechTank") ?? UIImage(), type: UIImage(systemName: "arrowtriangle.down.fill") ?? UIImage(), tankLVL: "IX", tankIcon: UIImage(named: "tnhtvz51") ?? UIImage(), tankName: "TNH T Vz. 51", premium: false),
        
        TankModel(contry: UIImage(named: "czechTank") ?? UIImage(), type: UIImage(systemName: "arrowtriangle.down.fill") ?? UIImage(), tankLVL: "IX", tankIcon: UIImage(named: "vz58k") ?? UIImage(), tankName: "Vz. 58 Kocept", premium: true),
        
        TankModel(contry: UIImage(named: "czechTank") ?? UIImage(), type: UIImage(systemName: "arrowtriangle.down.fill") ?? UIImage(), tankLVL: "VIII", tankIcon: UIImage(named: "tvp46") ?? UIImage(), tankName: "TVP VTU Koncept", premium: false),
        
        TankModel(contry: UIImage(named: "czechTank") ?? UIImage(), type: UIImage(systemName: "arrowtriangle.down.fill") ?? UIImage(), tankLVL: "VIII", tankIcon: UIImage(named: "t27") ?? UIImage(), tankName: "Škoda T 27", premium: true),
        
        TankModel(contry: UIImage(named: "czechTank") ?? UIImage(), type: UIImage(systemName: "arrowtriangle.down.fill") ?? UIImage(), tankLVL: "VIII", tankIcon: UIImage(named: "tnh105") ?? UIImage(), tankName: "TNH 105/1000", premium: false),
        
        TankModel(contry: UIImage(named: "czechTank") ?? UIImage(), type: UIImage(systemName: "arrowtriangle.down.fill") ?? UIImage(), tankLVL: "VIII", tankIcon: UIImage(named: "tst") ?? UIImage(), tankName: "TST", premium: true),
        
        TankModel(contry: UIImage(named: "czechTank") ?? UIImage(), type: UIImage(systemName: "arrowtriangle.down.fill") ?? UIImage(), tankLVL: "VIII", tankIcon: UIImage(named: "t56") ?? UIImage(), tankName: "Škoda T 56", premium: true),
        
        TankModel(contry: UIImage(named: "czechTank") ?? UIImage(), type: UIImage(systemName: "arrowtriangle.down.fill") ?? UIImage(), tankLVL: "VIII", tankIcon: UIImage(named: "shptk") ?? UIImage(), tankName: "ShPTK-TVP 100", premium: true),
        
        TankModel(contry: UIImage(named: "czechTank") ?? UIImage(), type: UIImage(systemName: "arrowtriangle.down.fill") ?? UIImage(), tankLVL: "VII", tankIcon: UIImage(named: "t34100") ?? UIImage(), tankName: "KONŠTRUKTA T-34/100", premium: false),
        
        TankModel(contry: UIImage(named: "czechTank") ?? UIImage(), type: UIImage(systemName: "arrowtriangle.down.fill") ?? UIImage(), tankLVL: "VII", tankIcon: UIImage(named: "vz441") ?? UIImage(), tankName: "Vz. 44-1", premium: false),
        
        TankModel(contry: UIImage(named: "czechTank") ?? UIImage(), type: UIImage(systemName: "arrowtriangle.down.fill") ?? UIImage(), tankLVL: "VII", tankIcon: UIImage(named: "t45") ?? UIImage(), tankName: "Škoda T 45", premium: true),
        
        TankModel(contry: UIImage(named: "czechTank") ?? UIImage(), type: UIImage(systemName: "arrowtriangle.down.fill") ?? UIImage(), tankLVL: "VI", tankIcon: UIImage(named: "t25") ?? UIImage(), tankName: "Škoda T 25", premium: false),
        
        TankModel(contry: UIImage(named: "czechTank") ?? UIImage(), type: UIImage(systemName: "arrowtriangle.down.fill") ?? UIImage(), tankLVL: "VI", tankIcon: UIImage(named: "t40") ?? UIImage(), tankName: "Škoda T 40", premium: true),
        
        TankModel(contry: UIImage(named: "czechTank") ?? UIImage(), type: UIImage(systemName: "arrowtriangle.down.fill") ?? UIImage(), tankLVL: "V", tankIcon: UIImage(named: "t24") ?? UIImage(), tankName: "Škoda T 24", premium: false),
        
        TankModel(contry: UIImage(named: "czechTank") ?? UIImage(), type: UIImage(systemName: "arrowtriangle.down.fill") ?? UIImage(), tankLVL: "IV", tankIcon: UIImage(named: "v8h") ?? UIImage(), tankName: "ST vz. 39", premium: false),
        
        TankModel(contry: UIImage(named: "czechTank") ?? UIImage(), type: UIImage(systemName: "arrowtriangle.down.fill") ?? UIImage(), tankLVL: "IV", tankIcon: UIImage(named: "tatra") ?? UIImage(), tankName: "Tatra T-III", premium: true),
        
        TankModel(contry: UIImage(named: "czechTank") ?? UIImage(), type: UIImage(systemName: "arrowtriangle.down.fill") ?? UIImage(), tankLVL: "III", tankIcon: UIImage(named: "vz38") ?? UIImage(), tankName: "LT vz.38", premium: false),
        
        TankModel(contry: UIImage(named: "czechTank") ?? UIImage(), type: UIImage(systemName: "arrowtriangle.down.fill") ?? UIImage(), tankLVL: "III", tankIcon: UIImage(named: "pzw39") ?? UIImage(), tankName: "Pzw.39", premium: true),
        
        TankModel(contry: UIImage(named: "czechTank") ?? UIImage(), type: UIImage(systemName: "arrowtriangle.down.fill") ?? UIImage(), tankLVL: "II", tankIcon: UIImage(named: "vz35") ?? UIImage(), tankName: "LT vz. 35", premium: false),
        
        TankModel(contry: UIImage(named: "czechTank") ?? UIImage(), type: UIImage(systemName: "arrowtriangle.down.fill") ?? UIImage(), tankLVL: "II", tankIcon: UIImage(named: "kolo") ?? UIImage(), tankName: "Kolohousenka", premium: false),
        
    ]
}
