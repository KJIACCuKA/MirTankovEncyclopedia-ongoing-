//
//  ViewController.swift
//  MirTankovEncyclopedia
//
//  Created by Никита Козловский on 21.12.2024.
//

import UIKit
import SafariServices

class MainScreenViewController: UIViewController {
    
    // MARK: - Private Properties
    
    private lazy var mainImageView = UIImageView(image: UIImage(named: "wotMain") ?? UIImage(), contentMode: .scaleAspectFill, tintColor: .clear)
    
    private lazy var gameSiteButton: UIButton = {
        let button = UIButton()
        button.setTitle("Перейти на сайт игры", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.backgroundColor = .wotOrange
        button.translatesAutoresizingMaskIntoConstraints = false
        button.layer.cornerRadius = 10
        button.addTarget(self, action: #selector(gameSiteButtonTapped), for: .touchUpInside)
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
    
    // MARK: - View Life Cycle

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .wotGray
        setupUI()
        setupConstraints()
    }
    
    // MARK: - Private Methods
    
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
    
    // MARK: - Actions
    
    @objc private func goButtonTapped() {
        let nationsVC = NationsAndTypesViewController()
        navigationController?.pushViewController(nationsVC, animated: true)
    }
    
    @objc private func gameSiteButtonTapped() {
        goToSafari()
    }

}

// MARK: - SFSafariViewControllerDelegate

extension MainScreenViewController: SFSafariViewControllerDelegate {
    
    private func goToSafari() {
        let urlString = "https://tanki.su"
        if let url = URL(string: urlString) {
            let safariVC = SFSafariViewController(url: url)
            safariVC.delegate = self
            present(safariVC, animated: true)
        }
    }
    
    func safariViewControllerDidFinish(_ controller: SFSafariViewController) {
        dismiss(animated: true)
    }
}

//MARK: - SwiftUI

import SwiftUI
struct MainScreen: PreviewProvider {
    static var previews: some View {
        ContainerView().edgesIgnoringSafeArea(.all)
    }
    
    struct ContainerView: UIViewControllerRepresentable {
        func updateUIViewController(_ uiViewController: MainScreen.ContainerView.UIViewControllerType, context: UIViewControllerRepresentableContext<MainScreen.ContainerView>) {
            
        }
        
        
        let mainScreen = MainScreenViewController()
        func makeUIViewController(context: UIViewControllerRepresentableContext<MainScreen.ContainerView>) -> MainScreenViewController {
            return mainScreen
        }
    }
}
