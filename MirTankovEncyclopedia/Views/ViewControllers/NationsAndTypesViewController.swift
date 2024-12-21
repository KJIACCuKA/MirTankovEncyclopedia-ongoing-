//
//  NationsViewControllers.swift
//  MirTankovEncyclopedia
//
//  Created by Никита Козловский on 21.12.2024.
//

import UIKit

class NationsAndTypesViewController: UIViewController {
    
    // MARK: - Private Properties
    
    private lazy var nationsAndTypesCollectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        layout.itemSize = CGSize(width: 100, height: 100)
        layout.sectionInset = UIEdgeInsets(top: 5, left: 5, bottom: 5, right: 5)
        collectionView.backgroundColor = .clear
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.allowsMultipleSelection = true
        collectionView.register(NationsCollectionViewCell.self, forCellWithReuseIdentifier: "\(NationsCollectionViewCell.self)")
        collectionView.register(TypesCollectionViewCell.self, forCellWithReuseIdentifier: "\(TypesCollectionViewCell.self)")
        collectionView.register(SectionHeader.self,
                                forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader,
                                withReuseIdentifier: Constants.headerID)
        collectionView.register(UICollectionReusableView.self,
                                forSupplementaryViewOfKind: UICollectionView.elementKindSectionFooter,
                                withReuseIdentifier: Constants.footerID)
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        return collectionView
    }()
//    
//    private let sectionLayout = GeometricParams(
//        columnCount: 6,
//        rowCount: 3,
//        leftInset: 16,
//        rightInset: 16,
//        topInset: 24,
//        bottomInset: 24,
//        columnSpacing: 5,
//        rowSpacing: 0
//    )
//    
//    private var cellSize: CGFloat {
//        let availableWidth = view.frame.width - sectionLayout.totalInsetWidth
//        return availableWidth / CGFloat(sectionLayout.columnCount)
//    }
    
    // MARK: - View Life Cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .wotGray
        setupUI()
        setupConstraints()
    }
    
    // MARK: - Private Methods
    
    private func setupUI() {
        view.addSubview(nationsAndTypesCollectionView)
    }
    
    private func setupConstraints() {
//        let sectionHeight = cellSize * CGFloat(sectionLayout.rowCount) + sectionLayout.totalInsetHeight + Constants.headerHeight
//        let totalCollectionHeight = sectionHeight * 2 + Constants.footerHeight
        
        NSLayoutConstraint.activate([
            nationsAndTypesCollectionView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            nationsAndTypesCollectionView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 10),
            nationsAndTypesCollectionView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -10),
            nationsAndTypesCollectionView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
//            nationsAndTypesCollectionView.heightAnchor.constraint(equalToConstant: totalCollectionHeight)
        ])
    }
}

// MARK: - UICollectionViewDataSource

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

// MARK: - UICollectionViewDelegate

extension NationsAndTypesViewController: UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView,
                        viewForSupplementaryElementOfKind kind: String,
                        at indexPath: IndexPath) -> UICollectionReusableView {
        if kind == UICollectionView.elementKindSectionHeader {
            guard let view = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: Constants.headerID, for: indexPath) as? SectionHeader else {
                return UICollectionReusableView()
            }
            view.config(with: indexPath.section == 0 ? "НАЦИИ" : "ТИПЫ ТЕХНИКИ")
            return view
        } else if kind == UICollectionView.elementKindSectionFooter {
            let footerView = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: Constants.footerID, for: indexPath)
            footerView.backgroundColor = .clear
            return footerView
        }
        return UICollectionReusableView()
    }
}

// MARK: - UICollectionViewDelegateFlowLayout

extension NationsAndTypesViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout,
                        referenceSizeForHeaderInSection section: Int) -> CGSize {
        return CGSize(width: collectionView.frame.width, height: Constants.headerHeight)
    }
    
    func collectionView(_ collectionView: UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout,
                        referenceSizeForFooterInSection section: Int) -> CGSize {
        if section == 0 {
            return CGSize(width: collectionView.frame.width, height: Constants.footerHeight)
        }
        return CGSize(width: 0, height: 0)
    }
//    
//    func collectionView(_ collectionView: UICollectionView,
//                        layout collectionViewLayout: UICollectionViewLayout,
//                        sizeForItemAt indexPath: IndexPath) -> CGSize {
//        return CGSize(width: cellSize, height: cellSize)
//    }
//    
//    func collectionView(_ collectionView: UICollectionView,
//                        layout collectionViewLayout: UICollectionViewLayout,
//                        insetForSectionAt section: Int) -> UIEdgeInsets {
//        return UIEdgeInsets(top: sectionLayout.topInset, left: sectionLayout.leftInset, bottom: sectionLayout.bottomInset, right: sectionLayout.rightInset)
//    }
//    
//    func collectionView(_ collectionView: UICollectionView,
//                        layout collectionViewLayout: UICollectionViewLayout,
//                        minimumLineSpacingForSectionAt section: Int) -> CGFloat {
//        sectionLayout.rowSpacing
//    }
//    
//    func collectionView(_ collectionView: UICollectionView,
//                        layout collectionViewLayout: UICollectionViewLayout,
//                        minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
//        sectionLayout.columnSpacing
//    }
}
