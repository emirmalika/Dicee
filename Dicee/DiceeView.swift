//
//  DiceeView.swift
//  Dicee
//
//  Created by Malik Em on 22.02.2023.
//

import UIKit

class DiceeView: UIView {
    
    private let diceeOne = UIImageView()
    private let diceeTwo = UIImageView()
    private let stackView = UIStackView()
    
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
        diceeOne.contentMode = .scaleAspectFit
        
        diceeTwo.translatesAutoresizingMaskIntoConstraints = false
        diceeTwo.image = UIImage(named: "DiceTwo")
        diceeTwo.contentMode = .scaleAspectFit
        
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
