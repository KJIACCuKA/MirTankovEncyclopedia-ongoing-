//
//  Nations.swift
//  MirTankovEncyclopedia
//
//  Created by Никита Козловский on 21.12.2024.
//

import UIKit

enum Nations {
    static let nations: [NationsAndTypesModel] = [
        NationsAndTypesModel(name: "СССР", image: UIImage(named: "ussr") ?? UIImage()),
        NationsAndTypesModel(name: "ГЕРМАНИЯ", image: UIImage(named: "germany") ?? UIImage()),
        NationsAndTypesModel(name: "США", image: UIImage(named: "usa") ?? UIImage()),
        NationsAndTypesModel(name: "КИТАЙ", image: UIImage(named: "china") ?? UIImage()),
        NationsAndTypesModel(name: "ФРАНЦИЯ", image: UIImage(named: "france") ?? UIImage()),
        NationsAndTypesModel(name: "ВЕЛИКОБРИТАНИЯ", image: UIImage(named: "uk") ?? UIImage()),
        NationsAndTypesModel(name: "ЯПОНИЯ", image: UIImage(named: "japan") ?? UIImage()),
        NationsAndTypesModel(name: "ЧЕХОСЛОВАКИЯ", image: UIImage(named: "czech") ?? UIImage()),
        NationsAndTypesModel(name: "ШВЕЦИЯ", image: UIImage(named: "sweden") ?? UIImage()),
        NationsAndTypesModel(name: "ПОЛЬША", image: UIImage(named: "poland") ?? UIImage()),
        NationsAndTypesModel(name: "ИТАЛИЯ", image: UIImage(named: "italy") ?? UIImage())
    ]
    
    static let types: [NationsAndTypesModel] = [
        NationsAndTypesModel(name: "ЛЕГКИЕ ТАНКИ", image: <#T##UIImage?#>)
    ]
        
}
