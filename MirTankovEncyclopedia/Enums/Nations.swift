//
//  Nations.swift
//  MirTankovEncyclopedia
//
//  Created by Никита Козловский on 21.12.2024.
//

import UIKit

enum NationsAndTypes {
    static let nations: [NationsAndTypesModel] = [
        NationsAndTypesModel(name: "СССР", image: UIImage(named: "ussr")),
        NationsAndTypesModel(name: "ГЕРМАНИЯ", image: UIImage(named: "germany")),
        NationsAndTypesModel(name: "США", image: UIImage(named: "usa")),
        NationsAndTypesModel(name: "КИТАЙ", image: UIImage(named: "china")),
        NationsAndTypesModel(name: "ФРАНЦИЯ", image: UIImage(named: "france")),
        NationsAndTypesModel(name: "ВЕЛИКОБРИТАНИЯ", image: UIImage(named: "uk")),
        NationsAndTypesModel(name: "ЯПОНИЯ", image: UIImage(named: "japan")),
        NationsAndTypesModel(name: "ЧЕХОСЛОВАКИЯ", image: UIImage(named: "czech")),
        NationsAndTypesModel(name: "ШВЕЦИЯ", image: UIImage(named: "sweden")),
        NationsAndTypesModel(name: "ПОЛЬША", image: UIImage(named: "poland")),
        NationsAndTypesModel(name: "ИТАЛИЯ", image: UIImage(named: "italy"))
    ]
    
    static let types: [NationsAndTypesModel] = [
        NationsAndTypesModel(name: "ЛЕГКИЕ ТАНКИ", image: UIImage(named: "lighttank")),
        NationsAndTypesModel(name: "СРЕДНИЕ ТАНКИ", image: UIImage(named: "mediumtank")),
        NationsAndTypesModel(name: "ТЯЖЕЛЫЕ ТАНКИ", image: UIImage(named: "heavytank")),
        NationsAndTypesModel(name: "ПТ-САУ", image: UIImage(named: "at-spg")),
        NationsAndTypesModel(name: "САУ", image: UIImage(named: "spg")),
    ]
        
}
