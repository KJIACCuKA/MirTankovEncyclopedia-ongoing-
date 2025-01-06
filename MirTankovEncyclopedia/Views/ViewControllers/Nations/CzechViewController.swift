//
//  CzechViewController.swift
//  MirTankovEncyclopedia
//
//  Created by Никита Козловский on 26.12.2024.
//

import UIKit

final class CzechViewController: UIViewController {
    
    var searchBarIsEmpty: Bool {
        guard let text = searchController.searchBar.text else { return false }
        return text.isEmpty
    }
    
    var isFiltering: Bool {
        return searchController.isActive && !searchBarIsEmpty
    }
    
    lazy var searchController = UISearchController(searchResultsController: nil)
    
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

extension CzechViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if isFiltering {
            return CzechTanks.filteredCzechTanks.count
        }
        return CzechTanks.czechTanks.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "\(TanksTableViewCell.self)", for: indexPath) as? TanksTableViewCell else {
            return UITableViewCell()
        }
        
        if isFiltering {
            cell.setupInfoForTanks(tankInfo: CzechTanks.filteredCzechTanks, indexPath: indexPath)
        } else {
            cell.setupInfoForTanks(tankInfo: CzechTanks.czechTanks, indexPath: indexPath)
        }
        
        return cell
    }
}

extension CzechViewController: UITableViewDelegate {
    
}

extension CzechViewController: UISearchResultsUpdating {
    
    func updateSearchResults(for searchController: UISearchController) {
        filterContentForSearchText(searchText: searchController.searchBar.text ?? "")
    }
    
    private func filterContentForSearchText(searchText: String) {
        CzechTanks.filteredCzechTanks = CzechTanks.czechTanks.filter({ (czechTank: TankModel) in
            return czechTank.tankName.lowercased().contains(searchText.lowercased())
        })
        tanksTableView.reloadData()
    }
}

//MARK: - SwiftUI

import SwiftUI
struct CzechTanksScreen: PreviewProvider {
    static var previews: some View {
        ContainerView().edgesIgnoringSafeArea(.all)
    }
    
    struct ContainerView: UIViewControllerRepresentable {
        func updateUIViewController(_ uiViewController: CzechTanksScreen.ContainerView.UIViewControllerType, context: UIViewControllerRepresentableContext<CzechTanksScreen.ContainerView>) {
            
        }
        
        
        let czechScreen = CzechViewController()
        func makeUIViewController(context: UIViewControllerRepresentableContext<CzechTanksScreen.ContainerView>) -> CzechViewController {
            return czechScreen
        }
    }
}
