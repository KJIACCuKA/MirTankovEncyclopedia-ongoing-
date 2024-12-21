//
//  NationsViewControllers.swift
//  MirTankovEncyclopedia
//
//  Created by Никита Козловский on 21.12.2024.
//

import UIKit

class NationsAndTypesViewController: UIViewController {
    
    private lazy var nationsAndTypesCollectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        layout.itemSize = CGSize(width: 80, height: 80)
        layout.sectionInset = UIEdgeInsets(top: 5, left: 5, bottom: 5, right: 5)
        collectionView.backgroundColor = .clear
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.register(NationsCollectionViewCell.self, forCellWithReuseIdentifier: "\(NationsCollectionViewCell.self)")
        collectionView.register(TypesCollectionViewCell.self, forCellWithReuseIdentifier: "\(TypesCollectionViewCell.self)")
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
        view.addSubview(nationsAndTypesCollectionView)
    }
    
    private func setupConstraints() {
        NSLayoutConstraint.activate([
            nationsAndTypesCollectionView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            nationsAndTypesCollectionView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            nationsAndTypesCollectionView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
            nationsAndTypesCollectionView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor)
        ])
    }
}

extension NationsAndTypesViewController: UICollectionViewDataSource {
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 2
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return section == 0 ? NationsAndTypes.nations.count : NationsAndTypes.types.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        switch indexPath.section {
            case 0:
            
                guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "\(NationsCollectionViewCell.self)", for: indexPath) as? NationsCollectionViewCell else { return UICollectionViewCell() }
                cell.setupInfoForCell(indexPath: indexPath)
                
                return cell
            
            case 1:
                guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "\(TypesCollectionViewCell.self)", for: indexPath) as? TypesCollectionViewCell else { return UICollectionViewCell() }
                cell.setupInfoForCell(indexPath: indexPath)
                
                return cell
            
        default:
            return UICollectionViewCell()
        }
        
    }
    
    
}

extension NationsAndTypesViewController: UICollectionViewDelegate {
    
}
