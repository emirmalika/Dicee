//
//  DiceeView.swift
//  Dicee
//
//  Created by Malik Em on 22.02.2023.
//

import UIKit

class DiceeView: UIView {
    
    let diceeOne = UIImageView()
    let diceeTwo = UIImageView()
    let stackView = UIStackView()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        style()
        layout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension DiceeView {
    private func style() {
        translatesAutoresizingMaskIntoConstraints = false
        
        diceeOne.translatesAutoresizingMaskIntoConstraints = false
        diceeOne.image = UIImage(named: "DiceOne")
      
        diceeTwo.translatesAutoresizingMaskIntoConstraints = false
        diceeTwo.image = UIImage(named: "DiceTwo")
      
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .horizontal
        stackView.spacing = 120
    }
    
    private func layout() {
        stackView.addArrangedSubview(diceeOne)
        stackView.addArrangedSubview(diceeTwo)
        addSubview(stackView)

        NSLayoutConstraint.activate([
            stackView.topAnchor.constraint(equalTo: topAnchor),
            stackView.leadingAnchor.constraint(equalTo: leadingAnchor),
            stackView.trailingAnchor.constraint(equalTo: trailingAnchor),
            stackView.bottomAnchor.constraint(equalTo: bottomAnchor)
        ])
    }
}
