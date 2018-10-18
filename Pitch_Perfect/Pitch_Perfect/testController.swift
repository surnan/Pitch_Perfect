//
//  testController.swift
//  Pitch_Perfect
//
//  Created by admin on 10/5/18.
//  Copyright © 2018 admin. All rights reserved.
//

import UIKit

class testController: UIViewController {
    
    let slowButton: UIButton = {
        let openingImage = UIImage(named: "slow")
        
        let button = UIButton(type: UIButton.ButtonType.custom)
        button.setImage(openingImage, for: .normal)
        button.imageView?.contentMode = .scaleToFill
        button.backgroundColor = UIColor.red
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    let echoButton: UIButton = {
        let openingImage = UIImage(named: "echo")
        let button = UIButton(type: UIButton.ButtonType.custom)
        button.setImage(openingImage, for: .normal)
        button.imageView?.contentMode = .scaleToFill
        button.backgroundColor = UIColor.green
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    
    override func viewDidLayoutSubviews() {
        slowButton.layer.cornerRadius = slowButton.bounds.size.width / 2
        slowButton.clipsToBounds = true
        echoButton.layer.cornerRadius = echoButton.bounds.size.width / 2
        echoButton.clipsToBounds = true
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.yellow
        slowButton.addTarget(self, action: #selector(handleButton), for: .touchDown)
        echoButton.addTarget(self, action: #selector(handleButton), for: .touchDown)
        
        view.addSubview(slowButton)
        view.addSubview(echoButton)
        
        NSLayoutConstraint.activate([
            slowButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            slowButton.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            
            
            
            echoButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            echoButton.topAnchor.constraint(equalTo: slowButton.bottomAnchor, constant: 30)
            ])
    }
    
    @objc func handleButton(){
        print("BUTTON PRESSED")
    }
}
