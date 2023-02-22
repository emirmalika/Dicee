//
//  ViewController.swift
//  Dicee
//
//  Created by Malik Em on 22.02.2023.
//

import UIKit

class DiceeViewController: UIViewController {
    
    let dices = DiceeView()
    let bg = UIImageView()
    let logo = UIImageView()
    let rollBtn = UIButton()
    
    let dicesArray = [UIImage(named: "DiceOne"), UIImage(named: "DiceTwo"), UIImage(named: "DiceThree"), UIImage(named: "DiceFour"), UIImage(named: "DiceFive"), UIImage(named: "DiceSix")]

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
        rollBtn.addTarget(self, action: #selector(rollBtnTapped), for: .touchUpInside)
    }
    
    private func layout() {
        view.addSubview(bg)
        view.addSubview(dices)
        view.addSubview(logo)
        view.addSubview(rollBtn)
        
        NSLayoutConstraint.activate([
            dices.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            dices.centerXAnchor.constraint(equalTo: view.centerXAnchor)
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

extension DiceeViewController {
    @objc func rollBtnTapped() {
        dices.diceeOne.image = dicesArray.randomElement() as? UIImage
        dices.diceeTwo.image = dicesArray.randomElement() as? UIImage
    }
}
