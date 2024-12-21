//
//  SwedenTanks.swift
//  MirTankovEncyclopedia
//
//  Created by Никита Козловский on 22.12.2024.
//

import UIKit

enum SwedenTanks {
    static let swedenTanks: [TankModel] = [
        TankModel(contry: UIImage(named: "swedenTank") ?? UIImage(), type: UIImage(systemName: "arrowtriangle.down.fill") ?? UIImage(), tankLVL: "X", tankIcon: UIImage(named: "udes1516") ?? UIImage(), tankName: "UDES 15/16", premium: false),
        TankModel(contry: UIImage(named: "swedenTank") ?? UIImage(), type: UIImage(systemName: "arrowtriangle.down.fill") ?? UIImage(), tankLVL: "X", tankIcon: UIImage(named: "kranvagn") ?? UIImage(), tankName: "Kranvagn", premium: false),
    ]
}
