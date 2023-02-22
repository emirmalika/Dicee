//
//  ViewController.swift
//  Dicee
//
//  Created by Malik Em on 22.02.2023.
//

import UIKit

class DiceeViewController: UIViewController {
    
    private let dicees = DiceeView()
    private let bg = UIImageView()
    private let logo = UIImageView()
    private let rollBtn = UIButton()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        style()
        layout()
    }
}

extension DiceeViewController {
    private func style() {
        view.backgroundColor = .red
        
        bg.translatesAutoresizingMaskIntoConstraints = false
        bg.image = UIImage(named: "GreenBackground")
        bg.contentMode = .scaleAspectFill
        
        logo.translatesAutoresizingMaskIntoConstraints = false
        logo.image = UIImage(named: "DiceeLogo")
        logo.contentMode = .scaleAspectFit
        
        rollBtn.translatesAutoresizingMaskIntoConstraints = false
        rollBtn.setTitle("Roll", for: [])
        rollBtn.backgroundColor = UIColor((#colorLiteral(red: 0.6078431373, green: 0.1098039216, blue: 0.1215686275, alpha: 1)))
        rollBtn.tintColor = .white
    }
    
    private func layout() {
        view.addSubview(bg)
        view.addSubview(dicees)
        view.addSubview(logo)
        view.addSubview(rollBtn)
        
        NSLayoutConstraint.activate([
            dicees.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            dicees.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
        
        NSLayoutConstraint.activate([
            bg.topAnchor.constraint(equalTo: view.topAnchor),
            bg.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            bg.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            bg.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
        
        NSLayoutConstraint.activate([
            logo.topAnchor.constraint(equalTo: view.topAnchor, constant: 100),
            logo.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
        
        NSLayoutConstraint.activate([
            rollBtn.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            rollBtn.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 130),
            rollBtn.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -130),
            rollBtn.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -200)
        ])
    }
}
