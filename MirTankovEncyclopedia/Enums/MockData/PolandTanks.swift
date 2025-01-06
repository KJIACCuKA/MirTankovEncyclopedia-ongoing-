//
//  PolandTanks.swift
//  MirTankovEncyclopedia
//
//  Created by Никита Козловский on 25.12.2024.
//

import UIKit

enum PolandTanks {
    static let polandTanks: [TankModel] = [
        
        TankModel(contry: UIImage(named: "polandTank") ?? UIImage(), type: UIImage(systemName: "arrowtriangle.down.fill") ?? UIImage(), tankLVL: "X", tankIcon: UIImage(named: "cs63") ?? UIImage(), tankName: "CS-63", premium: false),
        
        TankModel(contry: UIImage(named: "polandTank") ?? UIImage(), type: UIImage(systemName: "arrowtriangle.down.fill") ?? UIImage(), tankLVL: "X", tankIcon: UIImage(named: "cs63P") ?? UIImage(), tankName: "CS-63 Wilk", premium: true),
        
        TankModel(contry: UIImage(named: "polandTank") ?? UIImage(), type: UIImage(systemName: "arrowtriangle.down.fill") ?? UIImage(), tankLVL: "X", tankIcon: UIImage(named: "60tp") ?? UIImage(), tankName: "60TP Lewandowskiego", premium: true),
        
        TankModel(contry: UIImage(named: "polandTank") ?? UIImage(), type: UIImage(systemName: "arrowtriangle.down.fill") ?? UIImage(), tankLVL: "X", tankIcon: UIImage(named: "czolg") ?? UIImage(), tankName: "CZOŁG Pancernik wz.46", premium: true),
        
        TankModel(contry: UIImage(named: "polandTank") ?? UIImage(), type: UIImage(systemName: "arrowtriangle.down.fill") ?? UIImage(), tankLVL: "X", tankIcon: UIImage(named: "czolgP") ?? UIImage(), tankName: "CZOŁG (P) WZ.46 WIEDŹMAK", premium: true),
        
        TankModel(contry: UIImage(named: "polandTank") ?? UIImage(), type: UIImage(systemName: "arrowtriangle.down.fill") ?? UIImage(), tankLVL: "X", tankIcon: UIImage(named: "wz70t") ?? UIImage(), tankName: "Wz. 70 Żubr", premium: false),
        
        TankModel(contry: UIImage(named: "polandTank") ?? UIImage(), type: UIImage(systemName: "arrowtriangle.down.fill") ?? UIImage(), tankLVL: "IX", tankIcon: UIImage(named: "cs59") ?? UIImage(), tankName: "CS-59", premium: false),
        
        TankModel(contry: UIImage(named: "polandTank") ?? UIImage(), type: UIImage(systemName: "arrowtriangle.down.fill") ?? UIImage(), tankLVL: "IX", tankIcon: UIImage(named: "50tp") ?? UIImage(), tankName: "50TP Tyszkiewicza", premium: false),
        
        TankModel(contry: UIImage(named: "polandTank") ?? UIImage(), type: UIImage(systemName: "arrowtriangle.down.fill") ?? UIImage(), tankLVL: "IX", tankIcon: UIImage(named: "wz60") ?? UIImage(), tankName: "WZ.60 NIEDŹWIEDŹ", premium: false),
        
        TankModel(contry: UIImage(named: "polandTank") ?? UIImage(), type: UIImage(systemName: "arrowtriangle.down.fill") ?? UIImage(), tankLVL: "VIII", tankIcon: UIImage(named: "cs63") ?? UIImage(), tankName: "CS-53", premium: false),
        
        TankModel(contry: UIImage(named: "polandTank") ?? UIImage(), type: UIImage(systemName: "arrowtriangle.down.fill") ?? UIImage(), tankLVL: "VIII", tankIcon: UIImage(named: "cs52lis") ?? UIImage(), tankName: "CS-52 LIS", premium: true),
        
        TankModel(contry: UIImage(named: "polandTank") ?? UIImage(), type: UIImage(systemName: "arrowtriangle.down.fill") ?? UIImage(), tankLVL: "VIII", tankIcon: UIImage(named: "50tp_prot") ?? UIImage(), tankName: "50TP prototyp", premium: true),
        
        TankModel(contry: UIImage(named: "polandTank") ?? UIImage(), type: UIImage(systemName: "arrowtriangle.down.fill") ?? UIImage(), tankLVL: "VIII", tankIcon: UIImage(named: "53tp") ?? UIImage(), tankName: "53TP Markowskiego", premium: false),
        
        TankModel(contry: UIImage(named: "polandTank") ?? UIImage(), type: UIImage(systemName: "arrowtriangle.down.fill") ?? UIImage(), tankLVL: "VIII", tankIcon: UIImage(named: "56tp") ?? UIImage(), tankName: "56TP", premium: true),
        
        TankModel(contry: UIImage(named: "polandTank") ?? UIImage(), type: UIImage(systemName: "arrowtriangle.down.fill") ?? UIImage(), tankLVL: "VIII", tankIcon: UIImage(named: "wz58t") ?? UIImage(), tankName: "Wz.58T", premium: false),
        
        TankModel(contry: UIImage(named: "polandTank") ?? UIImage(), type: UIImage(systemName: "arrowtriangle.down.fill") ?? UIImage(), tankLVL: "VIII", tankIcon: UIImage(named: "wz66t") ?? UIImage(), tankName: "Wz.66T Burza", premium: true),
        
        TankModel(contry: UIImage(named: "polandTank") ?? UIImage(), type: UIImage(systemName: "arrowtriangle.down.fill") ?? UIImage(), tankLVL: "VII", tankIcon: UIImage(named: "cs44") ?? UIImage(), tankName: "CS-44", premium: false),
        
        TankModel(contry: UIImage(named: "polandTank") ?? UIImage(), type: UIImage(systemName: "arrowtriangle.down.fill") ?? UIImage(), tankLVL: "VII", tankIcon: UIImage(named: "45tp") ?? UIImage(), tankName: "45TP Habicha", premium: false),
        
        TankModel(contry: UIImage(named: "polandTank") ?? UIImage(), type: UIImage(systemName: "arrowtriangle.down.fill") ?? UIImage(), tankLVL: "VII", tankIcon: UIImage(named: "wz57d") ?? UIImage(), tankName: "Wz.57D", premium: false),
        
        TankModel(contry: UIImage(named: "polandTank") ?? UIImage(), type: UIImage(systemName: "arrowtriangle.down.fill") ?? UIImage(), tankLVL: "VI", tankIcon: UIImage(named: "pudel") ?? UIImage(), tankName: "Pudel", premium: true),
        
        TankModel(contry: UIImage(named: "polandTank") ?? UIImage(), type: UIImage(systemName: "arrowtriangle.down.fill") ?? UIImage(), tankLVL: "VI", tankIcon: UIImage(named: "40tp") ?? UIImage(), tankName: "40TP Habicha", premium: false),
        
        TankModel(contry: UIImage(named: "polandTank") ?? UIImage(), type: UIImage(systemName: "arrowtriangle.down.fill") ?? UIImage(), tankLVL: "VI", tankIcon: UIImage(named: "bugi") ?? UIImage(), tankName: "B.U.G.I", premium: false),
        
        TankModel(contry: UIImage(named: "polandTank") ?? UIImage(), type: UIImage(systemName: "arrowtriangle.down.fill") ?? UIImage(), tankLVL: "VI", tankIcon: UIImage(named: "rudy") ?? UIImage(), tankName: "T-34-85 Rudy", premium: true),
        
        TankModel(contry: UIImage(named: "polandTank") ?? UIImage(), type: UIImage(systemName: "arrowtriangle.down.fill") ?? UIImage(), tankLVL: "VI", tankIcon: UIImage(named: "wz44") ?? UIImage(), tankName: "Wz.44", premium: false),
        
        TankModel(contry: UIImage(named: "polandTank") ?? UIImage(), type: UIImage(systemName: "arrowtriangle.down.fill") ?? UIImage(), tankLVL: "V", tankIcon: UIImage(named: "25tp") ?? UIImage(), tankName: "25TP KSUST II", premium: false),
        
        TankModel(contry: UIImage(named: "polandTank") ?? UIImage(), type: UIImage(systemName: "arrowtriangle.down.fill") ?? UIImage(), tankLVL: "V", tankIcon: UIImage(named: "ds") ?? UIImage(), tankName: "DS PZINŻ", premium: false),
        
        TankModel(contry: UIImage(named: "polandTank") ?? UIImage(), type: UIImage(systemName: "arrowtriangle.down.fill") ?? UIImage(), tankLVL: "V", tankIcon: UIImage(named: "wz40") ?? UIImage(), tankName: "Wz.40", premium: false),
        
        TankModel(contry: UIImage(named: "polandTank") ?? UIImage(), type: UIImage(systemName: "arrowtriangle.down.fill") ?? UIImage(), tankLVL: "IV", tankIcon: UIImage(named: "14tp") ?? UIImage(), tankName: "14TP", premium: false),
        
        TankModel(contry: UIImage(named: "polandTank") ?? UIImage(), type: UIImage(systemName: "arrowtriangle.down.fill") ?? UIImage(), tankLVL: "III", tankIcon: UIImage(named: "10tp") ?? UIImage(), tankName: "10TP", premium: false),
        
        TankModel(contry: UIImage(named: "polandTank") ?? UIImage(), type: UIImage(systemName: "arrowtriangle.down.fill") ?? UIImage(), tankLVL: "II", tankIcon: UIImage(named: "tks") ?? UIImage(), tankName: "TKS z n.k.m. 20 mm", premium: false),
        
        TankModel(contry: UIImage(named: "polandTank") ?? UIImage(), type: UIImage(systemName: "arrowtriangle.down.fill") ?? UIImage(), tankLVL: "II", tankIcon: UIImage(named: "7tp") ?? UIImage(), tankName: "7TP", premium: false),
        
        TankModel(contry: UIImage(named: "polandTank") ?? UIImage(), type: UIImage(systemName: "arrowtriangle.down.fill") ?? UIImage(), tankLVL: "I", tankIcon: UIImage(named: "4tp") ?? UIImage(), tankName: "4TP", premium: false)
        
    ]
    
    static var filteredPolandTanks: [TankModel] = []
}
