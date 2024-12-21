//
//  ViewController.swift
//  MirTankovEncyclopedia
//
//  Created by Никита Козловский on 21.12.2024.
//

import UIKit

class MainScreenViewController: UIViewController {
    
    private lazy var mainImageView = UIImageView(image: UIImage(named: "wotMain") ?? UIImage(), contentMode: .scaleAspectFill)
    
    private lazy var gameSiteButton: UIButton = {
        let button = UIButton()
        button.setTitle("Перейти на сайт игры", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.backgroundColor = .wotOrange
        button.translatesAutoresizingMaskIntoConstraints = false
        button.layer.cornerRadius = 10
        button.titleLabel?.font = .systemFont(ofSize: 16, weight: .semibold)
        return button
    }()
    
    private lazy var goButton: UIButton = {
        let button = UIButton()
        button.setTitle("Узнать ТТХ танка", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.backgroundColor = .wotOrange
        button.translatesAutoresizingMaskIntoConstraints = false
        button.layer.cornerRadius = 10
        button.titleLabel?.font = .systemFont(ofSize: 16, weight: .semibold)
        button.addTarget(self, action: #selector(goButtonTapped), for: .touchUpInside)
        return button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .wotGray
        setupUI()
        setupConstraints()
    }
    
    private func setupUI() {
        view.addSubview(mainImageView)
        view.addSubview(gameSiteButton)
        view.addSubview(goButton)
    }
    
    private func setupConstraints() {
        NSLayoutConstraint.activate([
            mainImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            mainImageView.topAnchor.constraint(equalTo: view.topAnchor, constant: 150),
            mainImageView.heightAnchor.constraint(equalToConstant: 300),
            mainImageView.widthAnchor.constraint(equalToConstant: 300),
            
            goButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            goButton.topAnchor.constraint(equalTo: mainImageView.bottomAnchor, constant: 20),
            goButton.heightAnchor.constraint(equalToConstant: 50),
            goButton.widthAnchor.constraint(equalToConstant: 200),
            
            gameSiteButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            gameSiteButton.topAnchor.constraint(equalTo: goButton.bottomAnchor, constant: 20),
            gameSiteButton.heightAnchor.constraint(equalToConstant: 50),
            gameSiteButton.widthAnchor.constraint(equalToConstant: 200),
        ])
    }
    
    @objc func goButtonTapped() {
        let nationsVC = NationsAndTypesViewController()
        navigationController?.pushViewController(nationsVC, animated: true)
    }

}

