//
//  NationsViewControllers.swift
//  MirTankovEncyclopedia
//
//  Created by Никита Козловский on 21.12.2024.
//

import UIKit

class NationsViewController: UIViewController {
    
    
    
    private lazy var nationsCollectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        layout.itemSize = CGSize(width: 80, height: 80)
        layout.sectionInset = UIEdgeInsets(top: 5, left: 5, bottom: 5, right: 5)
        collectionView.backgroundColor = .clear
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.register(NationsCollectionViewCell.self, forCellWithReuseIdentifier: "\(NationsCollectionViewCell.self)")
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        return collectionView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .wotGray
        setupUI()
        setupConstraints()
    }
    
    private func setupUI() {
        view.addSubview(nationsCollectionView)
    }
    
    private func setupConstraints() {
        NSLayoutConstraint.activate([
            nationsCollectionView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            nationsCollectionView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            nationsCollectionView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
            nationsCollectionView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor)
        ])
    }
}

extension NationsViewController: UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return Nations.nations.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "\(NationsCollectionViewCell.self)", for: indexPath) as? NationsCollectionViewCell else { return UICollectionViewCell() }
        cell.setupInfoForCell(indexPath: indexPath)
        return cell
    }
    
    
}

extension NationsViewController: UICollectionViewDelegate {
    
}
