//
//  JapanTanks.swift
//  MirTankovEncyclopedia
//
//  Created by Никита Козловский on 26.12.2024.
//

import UIKit

enum JapanTanks {
    static let japanTanks: [TankModel] = [
        
        TankModel(contry: UIImage(named: "japanTank") ?? UIImage(), type: UIImage(systemName: "arrowtriangle.down.fill") ?? UIImage(), tankLVL: "X", tankIcon: UIImage(named: "stb1") ?? UIImage(), tankName: "STB-1", premium: false),
        
        TankModel(contry: UIImage(named: "japanTank") ?? UIImage(), type: UIImage(systemName: "arrowtriangle.down.fill") ?? UIImage(), tankLVL: "X", tankIcon: UIImage(named: "type5") ?? UIImage(), tankName: "Type 5 Heavy", premium: false),
        
        TankModel(contry: UIImage(named: "japanTank") ?? UIImage(), type: UIImage(systemName: "arrowtriangle.down.fill") ?? UIImage(), tankLVL: "X", tankIcon: UIImage(named: "type71") ?? UIImage(), tankName: "Type 71", premium: false),
        
        TankModel(contry: UIImage(named: "japanTank") ?? UIImage(), type: UIImage(systemName: "arrowtriangle.down.fill") ?? UIImage(), tankLVL: "X", tankIcon: UIImage(named: "hori3") ?? UIImage(), tankName: "Ho-Ri 3", premium: false),
        
        TankModel(contry: UIImage(named: "japanTank") ?? UIImage(), type: UIImage(systemName: "arrowtriangle.down.fill") ?? UIImage(), tankLVL: "IX", tankIcon: UIImage(named: "type61") ?? UIImage(), tankName: "Type 61", premium: false),
        
        TankModel(contry: UIImage(named: "japanTank") ?? UIImage(), type: UIImage(systemName: "arrowtriangle.down.fill") ?? UIImage(), tankLVL: "IX", tankIcon: UIImage(named: "type4") ?? UIImage(), tankName: "Type 4 Heavy", premium: false),
        
        TankModel(contry: UIImage(named: "japanTank") ?? UIImage(), type: UIImage(systemName: "arrowtriangle.down.fill") ?? UIImage(), tankLVL: "IX", tankIcon: UIImage(named: "type68") ?? UIImage(), tankName: "Type 68", premium: false),
        
        TankModel(contry: UIImage(named: "japanTank") ?? UIImage(), type: UIImage(systemName: "arrowtriangle.down.fill") ?? UIImage(), tankLVL: "IX", tankIcon: UIImage(named: "hori1") ?? UIImage(), tankName: "Ho-Ri 1", premium: false),
        
        TankModel(contry: UIImage(named: "japanTank") ?? UIImage(), type: UIImage(systemName: "arrowtriangle.down.fill") ?? UIImage(), tankLVL: "VIII", tankIcon: UIImage(named: "sta1") ?? UIImage(), tankName: "STA-1", premium: false),
        
        TankModel(contry: UIImage(named: "japanTank") ?? UIImage(), type: UIImage(systemName: "arrowtriangle.down.fill") ?? UIImage(), tankLVL: "VIII", tankIcon: UIImage(named: "sta2") ?? UIImage(), tankName: "STA-2", premium: true),
        
        TankModel(contry: UIImage(named: "japanTank") ?? UIImage(), type: UIImage(systemName: "arrowtriangle.down.fill") ?? UIImage(), tankLVL: "VIII", tankIcon: UIImage(named: "oho") ?? UIImage(), tankName: "O-Ho", premium: false),
        
        TankModel(contry: UIImage(named: "japanTank") ?? UIImage(), type: UIImage(systemName: "arrowtriangle.down.fill") ?? UIImage(), tankLVL: "VIII", tankIcon: UIImage(named: "type57") ?? UIImage(), tankName: "Type 57", premium: false),
        
        TankModel(contry: UIImage(named: "japanTank") ?? UIImage(), type: UIImage(systemName: "arrowtriangle.down.fill") ?? UIImage(), tankLVL: "VIII", tankIcon: UIImage(named: "karachun") ?? UIImage(), tankName: "Карачун", premium: true),
        
        TankModel(contry: UIImage(named: "japanTank") ?? UIImage(), type: UIImage(systemName: "arrowtriangle.down.fill") ?? UIImage(), tankLVL: "VIII", tankIcon: UIImage(named: "type63") ?? UIImage(), tankName: "Type 63", premium: true),
        
        TankModel(contry: UIImage(named: "japanTank") ?? UIImage(), type: UIImage(systemName: "arrowtriangle.down.fill") ?? UIImage(), tankLVL: "VIII", tankIcon: UIImage(named: "hori2") ?? UIImage(), tankName: "Ho-Ri 2", premium: false),
        
        TankModel(contry: UIImage(named: "japanTank") ?? UIImage(), type: UIImage(systemName: "arrowtriangle.down.fill") ?? UIImage(), tankLVL: "VIII", tankIcon: UIImage(named: "kari") ?? UIImage(), tankName: "Type 5 Ka-Ri", premium: true),
        
        TankModel(contry: UIImage(named: "japanTank") ?? UIImage(), type: UIImage(systemName: "arrowtriangle.down.fill") ?? UIImage(), tankLVL: "VII", tankIcon: UIImage(named: "chiri") ?? UIImage(), tankName: "Type 5 Chi-Ri", premium: false),
        
        TankModel(contry: UIImage(named: "japanTank") ?? UIImage(), type: UIImage(systemName: "arrowtriangle.down.fill") ?? UIImage(), tankLVL: "VII", tankIcon: UIImage(named: "oni") ?? UIImage(), tankName: "O-Ni", premium: false),
        
        TankModel(contry: UIImage(named: "japanTank") ?? UIImage(), type: UIImage(systemName: "arrowtriangle.down.fill") ?? UIImage(), tankLVL: "VII", tankIcon: UIImage(named: "juto") ?? UIImage(), tankName: "Type 4 Ju-To", premium: false),
        
        TankModel(contry: UIImage(named: "japanTank") ?? UIImage(), type: UIImage(systemName: "arrowtriangle.down.fill") ?? UIImage(), tankLVL: "VII", tankIcon: UIImage(named: "chitosp") ?? UIImage(), tankName: "Chi-To SP", premium: false),
        
        TankModel(contry: UIImage(named: "japanTank") ?? UIImage(), type: UIImage(systemName: "arrowtriangle.down.fill") ?? UIImage(), tankLVL: "VI", tankIcon: UIImage(named: "chito") ?? UIImage(), tankName: "Type 4 Chi-To", premium: false),
        
        TankModel(contry: UIImage(named: "japanTank") ?? UIImage(), type: UIImage(systemName: "arrowtriangle.down.fill") ?? UIImage(), tankLVL: "VI", tankIcon: UIImage(named: "mito") ?? UIImage(), tankName: "O-I", premium: false),
        
        TankModel(contry: UIImage(named: "japanTank") ?? UIImage(), type: UIImage(systemName: "arrowtriangle.down.fill") ?? UIImage(), tankLVL: "VI", tankIcon: UIImage(named: "type3") ?? UIImage(), tankName: "Type 3 Ju-Nu", premium: false),
        
        TankModel(contry: UIImage(named: "japanTank") ?? UIImage(), type: UIImage(systemName: "arrowtriangle.down.fill") ?? UIImage(), tankLVL: "VI", tankIcon: UIImage(named: "tiger") ?? UIImage(), tankName: "Heavy Tank No. VI", premium: true),
        
        TankModel(contry: UIImage(named: "japanTank") ?? UIImage(), type: UIImage(systemName: "arrowtriangle.down.fill") ?? UIImage(), tankLVL: "VI", tankIcon: UIImage(named: "jiro") ?? UIImage(), tankName: "Type 95 Ji-Ro", premium: false),
        
        TankModel(contry: UIImage(named: "japanTank") ?? UIImage(), type: UIImage(systemName: "arrowtriangle.down.fill") ?? UIImage(), tankLVL: "V", tankIcon: UIImage(named: "chinu") ?? UIImage(), tankName: "Type 3 Chi-Nu", premium: false),
        
        TankModel(contry: UIImage(named: "japanTank") ?? UIImage(), type: UIImage(systemName: "arrowtriangle.down.fill") ?? UIImage(), tankLVL: "V", tankIcon: UIImage(named: "chinukai") ?? UIImage(), tankName: "Type 3 Chi-Nu Kai", premium: true),
        
        TankModel(contry: UIImage(named: "japanTank") ?? UIImage(), type: UIImage(systemName: "arrowtriangle.down.fill") ?? UIImage(), tankLVL: "V", tankIcon: UIImage(named: "mito") ?? UIImage(), tankName: "O-I Experimental", premium: false),
        
        TankModel(contry: UIImage(named: "japanTank") ?? UIImage(), type: UIImage(systemName: "arrowtriangle.down.fill") ?? UIImage(), tankLVL: "V", tankIcon: UIImage(named: "mitsu") ?? UIImage(), tankName: "Mitsu 108", premium: false),
        
        TankModel(contry: UIImage(named: "japanTank") ?? UIImage(), type: UIImage(systemName: "arrowtriangle.down.fill") ?? UIImage(), tankLVL: "V", tankIcon: UIImage(named: "honi") ?? UIImage(), tankName: "Type 3 Ho-Ni III", premium: false),
        
        TankModel(contry: UIImage(named: "japanTank") ?? UIImage(), type: UIImage(systemName: "arrowtriangle.down.fill") ?? UIImage(), tankLVL: "IV", tankIcon: UIImage(named: "keho") ?? UIImage(), tankName: "Type 5 Ke-Ho", premium: false),
        
        TankModel(contry: UIImage(named: "japanTank") ?? UIImage(), type: UIImage(systemName: "arrowtriangle.down.fill") ?? UIImage(), tankLVL: "IV", tankIcon: UIImage(named: "chihe") ?? UIImage(), tankName: "Type 1 Chi-He", premium: false),
        
        TankModel(contry: UIImage(named: "japanTank") ?? UIImage(), type: UIImage(systemName: "arrowtriangle.down.fill") ?? UIImage(), tankLVL: "IV", tankIcon: UIImage(named: "type95") ?? UIImage(), tankName: "Type 95 Heavy", premium: false),
        
        TankModel(contry: UIImage(named: "japanTank") ?? UIImage(), type: UIImage(systemName: "arrowtriangle.down.fill") ?? UIImage(), tankLVL: "III", tankIcon: UIImage(named: "chiha") ?? UIImage(), tankName: "Type 97 Chi-Ha", premium: false),
        
        TankModel(contry: UIImage(named: "japanTank") ?? UIImage(), type: UIImage(systemName: "arrowtriangle.down.fill") ?? UIImage(), tankLVL: "III", tankIcon: UIImage(named: "keni") ?? UIImage(), tankName: "Type 98 Ke-Ni", premium: false),
        
        TankModel(contry: UIImage(named: "japanTank") ?? UIImage(), type: UIImage(systemName: "arrowtriangle.down.fill") ?? UIImage(), tankLVL: "III", tankIcon: UIImage(named: "type91") ?? UIImage(), tankName: "Type 91 Heavy", premium: false),
        
        TankModel(contry: UIImage(named: "japanTank") ?? UIImage(), type: UIImage(systemName: "arrowtriangle.down.fill") ?? UIImage(), tankLVL: "II", tankIcon: UIImage(named: "hago") ?? UIImage(), tankName: "Type 95 Ha-Go", premium: false),
        
        TankModel(contry: UIImage(named: "japanTank") ?? UIImage(), type: UIImage(systemName: "arrowtriangle.down.fill") ?? UIImage(), tankLVL: "II", tankIcon: UIImage(named: "teke") ?? UIImage(), tankName: "Type 97 Te-Ke", premium: true),
        
        TankModel(contry: UIImage(named: "japanTank") ?? UIImage(), type: UIImage(systemName: "arrowtriangle.down.fill") ?? UIImage(), tankLVL: "II", tankIcon: UIImage(named: "chini") ?? UIImage(), tankName: "Chi-Ni", premium: false),
        
        TankModel(contry: UIImage(named: "japanTank") ?? UIImage(), type: UIImage(systemName: "arrowtriangle.down.fill") ?? UIImage(), tankLVL: "II", tankIcon: UIImage(named: "type89") ?? UIImage(), tankName: "Type 89 I-Go/Chi-Ro", premium: false),
        
        TankModel(contry: UIImage(named: "japanTank") ?? UIImage(), type: UIImage(systemName: "arrowtriangle.down.fill") ?? UIImage(), tankLVL: "I", tankIcon: UIImage(named: "renault") ?? UIImage(), tankName: "Renault Otsu", premium: false),
        
    ]
}
        
