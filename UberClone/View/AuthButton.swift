//
//  AuthButton.swift
//  UberClone
//
//  Created by Mateusz Sochanowski on 14/01/2021.
//

import UIKit

class AuthButton: UIButton {

    override init(frame: CGRect) {
        super.init(frame: frame)
        heightAnchor.constraint(equalToConstant: 50).isActive = true
        backgroundColor = .mainBlueTint
        setTitleColor(UIColor(white: 1, alpha: 0.5), for: .normal)
        layer.cornerRadius = 5
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
