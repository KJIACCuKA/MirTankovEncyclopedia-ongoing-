//
//  PolandViewController.swift
//  MirTankovEncyclopedia
//
//  Created by Никита Козловский on 25.12.2024.
//

import UIKit

final class PolandViewController: UIViewController {
    
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

extension PolandViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if isFiltering {
            return PolandTanks.filteredPolandTanks.count
        }
        return PolandTanks.polandTanks.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "\(TanksTableViewCell.self)", for: indexPath) as? TanksTableViewCell else {
            return UITableViewCell()
        }
        if isFiltering {
            cell.setupInfoForTanks(tankInfo: PolandTanks.filteredPolandTanks, indexPath: indexPath)
        } else {
            cell.setupInfoForTanks(tankInfo: PolandTanks.polandTanks, indexPath: indexPath)
        }
        return cell
    }
}

extension PolandViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let detailTankInfoVC = DetailTankInfoViewController()
        navigationController?.pushViewController(detailTankInfoVC, animated: true)
    }
}

extension PolandViewController: UISearchResultsUpdating {
    
    func updateSearchResults(for searchController: UISearchController) {
        filterContentForSearchText(searchText: searchController.searchBar.text ?? "")
    }
    
    private func filterContentForSearchText(searchText: String) {
        PolandTanks.filteredPolandTanks = PolandTanks.polandTanks.filter({ (polandTank: TankModel) in
            return polandTank.tankName.lowercased().contains(searchText.lowercased())
        })
        tanksTableView.reloadData()
    }
}

//MARK: - SwiftUI

import SwiftUI
struct PolandTanksScreen: PreviewProvider {
    static var previews: some View {
        ContainerView().edgesIgnoringSafeArea(.all)
    }
    
    struct ContainerView: UIViewControllerRepresentable {
        func updateUIViewController(_ uiViewController: PolandTanksScreen.ContainerView.UIViewControllerType, context: UIViewControllerRepresentableContext<PolandTanksScreen.ContainerView>) {
            
        }
        
        
        let polandScreen = PolandViewController()
        func makeUIViewController(context: UIViewControllerRepresentableContext<PolandTanksScreen.ContainerView>) -> PolandViewController {
            return polandScreen
        }
    }
}

