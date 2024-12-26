//
//  SwedenViewController.swift
//  MirTankovEncyclopedia
//
//  Created by Никита Козловский on 21.12.2024.
//

import UIKit

final class SwedenViewController: UIViewController {
    
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
}

extension SwedenViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        SwedenTanks.swedenTanks.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "\(TanksTableViewCell.self)", for: indexPath) as? TanksTableViewCell else {
            return UITableViewCell()
        }
        cell.setupInfoForTanks(tankInfo: SwedenTanks.swedenTanks, indexPath: indexPath)
        return cell
    }
}

extension SwedenViewController: UITableViewDelegate {
    
}
