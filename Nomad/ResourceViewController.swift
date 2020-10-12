//
//  ViewController.swift
//  Nomad
//
//  Created by Aaron Cleveland on 10/10/20.
//

import UIKit

class ResourceViewController: UIViewController {
    
    var timer: Timer?
    var money: Int = 0
    
    let topView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        return view
    }()
    
    let rankImage: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = UIImage(named: "private")
        image.contentMode = .scaleAspectFill
        return image
    }()
    
    lazy var moneyLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "$:\(money)"
        return label
    }()
    
    let oddJobsButton: UIButton = {
        let button = UIButton(type: .system)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Odd Jobs", for: .normal)
        button.backgroundColor = .systemYellow
        button.addTarget(self, action: #selector(oddJobsButtonPressed), for: .touchUpInside)
        return button
    }()
    
    let scrollView: UIScrollView = {
        let scrollView = UIScrollView()
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        scrollView.alwaysBounceVertical = true
        scrollView.contentInsetAdjustmentBehavior = .never
        scrollView.delaysContentTouches = false
        scrollView.keyboardDismissMode = .onDrag
        return scrollView
    }()
    
    let buyingVStack: UIStackView = {
        let stack = UIStackView()
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.axis = .vertical
        return stack
    }()
    
    let combatJob: UIButton = {
        let button = UIButton(type: .system)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Combat Practice", for: .normal)
        button.addTarget(self, action: #selector(combatJobTapped), for: .touchUpInside)
        return button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = #colorLiteral(red: 0.5295010875, green: 0.9135160298, blue: 0.6172690234, alpha: 1)
        subviews()
        constraints()
    }
    
    @objc func oddJobsButtonPressed() {
        let randomJobMoney = Int.random(in: 1...25)
        money += randomJobMoney
        moneyLabel.text = "$:\(money)"
    }
    
    @objc func combatJobTapped() {
        timer = Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true, block: { (timer) in
            self.money += 1
            self.moneyLabel.text = "$:\(self.money)"
        })
    }
}

extension ResourceViewController {
    private func subviews() {
        view.addSubview(topView)
        view.addSubview(rankImage)
        view.addSubview(moneyLabel)
        view.addSubview(oddJobsButton)
        
        buyingVStack.addArrangedSubview(combatJob)
        scrollView.addSubview(buyingVStack)
        view.addSubview(scrollView)
    }
    
    private func constraints() {
        NSLayoutConstraint.activate([
            topView.topAnchor.constraint(equalTo: view.topAnchor),
            topView.leftAnchor.constraint(equalTo: view.leftAnchor),
            topView.rightAnchor.constraint(equalTo: view.rightAnchor),
            topView.heightAnchor.constraint(equalToConstant: 175),
            
            rankImage.centerYAnchor.constraint(equalTo: topView.centerYAnchor, constant: 8),
            rankImage.centerXAnchor.constraint(equalTo: topView.centerXAnchor),
            rankImage.heightAnchor.constraint(equalToConstant: 75),
            rankImage.widthAnchor.constraint(equalToConstant: 75),
            
            moneyLabel.topAnchor.constraint(equalTo: rankImage.bottomAnchor, constant: 8),
            moneyLabel.centerXAnchor.constraint(equalTo: topView.centerXAnchor),
            
            oddJobsButton.topAnchor.constraint(equalTo: topView.bottomAnchor, constant: 8),
            oddJobsButton.leftAnchor.constraint(equalTo: view.leftAnchor),
            oddJobsButton.rightAnchor.constraint(equalTo: view.rightAnchor),
            
            scrollView.topAnchor.constraint(equalTo: oddJobsButton.bottomAnchor),
            scrollView.leftAnchor.constraint(equalTo: view.leftAnchor),
            scrollView.rightAnchor.constraint(equalTo: view.rightAnchor),
            scrollView.heightAnchor.constraint(equalToConstant: 1000),
            
            buyingVStack.topAnchor.constraint(equalTo: scrollView.topAnchor),
            buyingVStack.leftAnchor.constraint(equalTo: scrollView.leftAnchor),
            buyingVStack.rightAnchor.constraint(equalTo: scrollView.rightAnchor),
            buyingVStack.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor),
        ])
    }
}

