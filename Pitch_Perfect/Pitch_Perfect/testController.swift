//
//  testController.swift
//  Pitch_Perfect
//
//  Created by admin on 10/5/18.
//  Copyright © 2018 admin. All rights reserved.
//

import UIKit

class testController: UIViewController {
    
    let topButton: UIButton = {
        let openingImage = UIImage(named: "slow")
        
        let button = UIButton(type: UIButton.ButtonType.custom)
        button.setImage(openingImage, for: .normal)
        button.imageView?.contentMode = .scaleToFill
        button.backgroundColor = UIColor.red
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    let bottomButton: UIButton = {
        let openingImage = UIImage(named: "echo")
        let button = UIButton(type: UIButton.ButtonType.custom)
        button.setImage(openingImage, for: .normal)
        button.imageView?.contentMode = .scaleToFill
        button.backgroundColor = UIColor.green
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    
    override func viewDidLayoutSubviews() {
        topButton.layer.cornerRadius = topButton.bounds.size.width / 2
        topButton.clipsToBounds = true
        bottomButton.layer.cornerRadius = bottomButton.bounds.size.width / 2
        bottomButton.clipsToBounds = true
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.yellow
        topButton.addTarget(self, action: #selector(handleButton), for: .touchDown)
        bottomButton.addTarget(self, action: #selector(handleButton), for: .touchDown)
        
        view.addSubview(topButton)
        view.addSubview(bottomButton)
        
        NSLayoutConstraint.activate([
            
            bottomButton.widthAnchor.constraint(equalTo: topButton.widthAnchor),
            bottomButton.heightAnchor.constraint(equalTo: topButton.heightAnchor),
            
            topButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            topButton.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            
            bottomButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            bottomButton.topAnchor.constraint(equalTo: topButton.bottomAnchor, constant: 30)
            ])
    }
    
    @objc func handleButton(){
        print("BUTTON PRESSED")
    }
}
