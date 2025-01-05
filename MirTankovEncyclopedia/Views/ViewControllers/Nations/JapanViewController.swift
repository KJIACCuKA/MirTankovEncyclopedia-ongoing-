//
//  JapanViewController.swift
//  MirTankovEncyclopedia
//
//  Created by Никита Козловский on 26.12.2024.
//

import UIKit

final class JapanViewController: UIViewController {
    
    private var searchBarIsEmpty: Bool {
        guard let text = searchController.searchBar.text else { return false }
        return text.isEmpty
    }
    
    private var isFiltering: Bool {
        return searchController.isActive && !searchBarIsEmpty
    }
    
    private lazy var searchController = UISearchController(searchResultsController: nil)
    
    private lazy var tanksTableView: UITableView = {
        let tableView = UITableView()
        tableView.register(TanksTableViewCell.self, forCellReuseIdentifier: "\(TanksTableViewCell.self)")
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.estimatedRowHeight = 150
        tableView.dataSource = self
        tableView.delegate = self
        tableView.separatorStyle = .none
        tableView.backgroundColor = .clear
        return tableView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .wotGray
        setupUI()
        settingsForSearchController()
    }
    
    private func setupUI() {
        view.addSubview(tanksTableView)
        NSLayoutConstraint.activate([
            tanksTableView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            tanksTableView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            tanksTableView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
            tanksTableView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor)
            ])
    }
    
    private func settingsForSearchController() {
        searchController.searchResultsUpdater = self
        searchController.obscuresBackgroundDuringPresentation = false
        searchController.searchBar.placeholder = "Введите название танка"
        navigationItem.searchController = searchController
        definesPresentationContext = true
    }
}

extension JapanViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if isFiltering {
            return JapanTanks.filteredJapanTanks.count
        }
        return JapanTanks.japanTanks.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "\(TanksTableViewCell.self)", for: indexPath) as? TanksTableViewCell else {
            return UITableViewCell()
        }
        
        if isFiltering {
            cell.setupInfoForTanks(tankInfo: JapanTanks.filteredJapanTanks, indexPath: indexPath)
        } else {
            cell.setupInfoForTanks(tankInfo: JapanTanks.japanTanks, indexPath: indexPath)
        }
        
        return cell
    }
}

extension JapanViewController: UITableViewDelegate {
    
}

extension JapanViewController: UISearchResultsUpdating {
    
    func updateSearchResults(for searchController: UISearchController) {
        filterContentForSearchText(searchText: searchController.searchBar.text ?? "")
    }
    
    private func filterContentForSearchText(searchText: String) {
        JapanTanks.filteredJapanTanks = JapanTanks.japanTanks.filter({ (japanTank: TankModel) in
            return japanTank.tankName.lowercased().contains(searchText.lowercased())
        })
        tanksTableView.reloadData()
    }
    
    
}
