//
//  SearchBar.swift
//  MirTankovEncyclopedia
//
//  Created by Никита Козловский on 05.01.2025.
//

import Foundation
import UIKit

class SearchBar {
    
    var searchBarIsEmpty: Bool {
        guard let text = searchController.searchBar.text else { return false }
        return text.isEmpty
    }
    
    var isFiltering: Bool {
        return searchController.isActive && !searchBarIsEmpty
    }
    
    lazy var searchController = UISearchController(searchResultsController: nil)
    
}
