//
//  SettingsViewController.swift
//  Nomad
//
//  Created by Aaron Cleveland on 10/11/20.
//

import UIKit

class SettingsViewController: UIViewController {
    
    let detailVStack: UIStackView = {
        let stack = UIStackView()
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.axis = .vertical
        stack.alignment = .center
        stack.distribution = .equalSpacing
        return stack
    }()
    
    let rankImage: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.contentMode = .scaleAspectFit
        image.image = UIImage(named: "private")
        image.widthAnchor.constraint(equalToConstant: 75).isActive = true
        image.heightAnchor.constraint(equalToConstant: 75).isActive = true
        return image
    }()
    
    let profileName: UILabel = {
        let name = UILabel()
        name.translatesAutoresizingMaskIntoConstraints = false
        name.text = "General Tots"
        return name
    }()
    
    let troopCount: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Troops: 100"
        return label
    }()
    
    let intelligenceCount: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Intelligence: 100"
        return label
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        subviews()
        constraints()
    }
}

extension SettingsViewController {
    private func subviews() {
        detailVStack.addArrangedSubview(rankImage)
        detailVStack.addArrangedSubview(profileName)
        detailVStack.addArrangedSubview(troopCount)
        detailVStack.addArrangedSubview(intelligenceCount)
        view.addSubview(detailVStack)
    }
    
    private func constraints() {
        detailVStack.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor).isActive = true
        detailVStack.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor).isActive = true
        detailVStack.rightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.rightAnchor).isActive = true
        detailVStack.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor).isActive = true
    }
}
