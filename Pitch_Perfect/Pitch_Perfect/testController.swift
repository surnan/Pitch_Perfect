//
//  testController.swift
//  Pitch_Perfect
//
//  Created by admin on 10/5/18.
//  Copyright © 2018 admin. All rights reserved.
//

import UIKit

class testController: UIViewController {
    
    lazy var slowButton: UIButton = {
        let openingImage = UIImage(named: "slow")
        
        let button = UIButton(type: UIButton.ButtonType.custom)
        button.setImage(openingImage, for: .normal)
        button.imageView?.contentMode = .scaleToFill
        button.backgroundColor = UIColor.red
        
        button.translatesAutoresizingMaskIntoConstraints = false
        button.layer.cornerRadius = button.bounds.size.width / 2
        return button
    }()
    
    lazy var echoButton: UIButton = {
        let openingImage = UIImage(named: "echo")
        let button = UIButton(type: UIButton.ButtonType.custom)
        button.setImage(openingImage, for: .normal)
        button.imageView?.contentMode = .scaleToFill
        button.backgroundColor = UIColor.green
        
        button.layer.cornerRadius = button.bounds.size.width / 2
        button.translatesAutoresizingMaskIntoConstraints = false
        
        return button
    }()
    
    
    let finalStackView: UIStackView = {
       var stack = UIStackView()
        stack.axis = .vertical
        stack.spacing = 20
        stack.translatesAutoresizingMaskIntoConstraints = false
        return stack
    }()
    
    
    override func viewDidLayoutSubviews() {
        slowButton.layer.cornerRadius = slowButton.bounds.size.width / 2
        slowButton.clipsToBounds = true
        
        echoButton.layer.cornerRadius = echoButton.bounds.size.width / 2
        echoButton.clipsToBounds = true
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        DispatchQueue.main.async {
            self.slowButton.layer.cornerRadius = self.slowButton.bounds.size.width / 2
            self.slowButton.clipsToBounds = true
            
            self.echoButton.layer.cornerRadius = self.echoButton.bounds.size.width / 2
            self.echoButton.clipsToBounds = true
        }
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.yellow
        slowButton.addTarget(self, action: #selector(handleButton), for: .touchDown)
        echoButton.addTarget(self, action: #selector(handleButton), for: .touchDown)
        
//        useIndividualButtons()
        useStack()

        
//        echoButton.setNeedsUpdateConstraints()
//        echoButton.setNeedsLayout()
//        echoButton.setNeedsDisplay()
//
//        finalStackView.setNeedsUpdateConstraints()
//        finalStackView.setNeedsLayout()
//        finalStackView.setNeedsDisplay()
//
//
//        super.view.setNeedsUpdateConstraints()
//        super.view.setNeedsLayout()
//        super.view.setNeedsDisplay()
 
    }
    
    @objc func handleButton(){
        print("BUTTON PRESSED")
    }
    
    
    func useStack(){
        [slowButton, echoButton].forEach{finalStackView.addArrangedSubview($0)}
        
        slowButton.layer.cornerRadius = slowButton.bounds.size.width / 2
        slowButton.clipsToBounds = true
        echoButton.layer.cornerRadius = echoButton.bounds.size.width / 2
        echoButton.clipsToBounds = true

        
        view.addSubview(finalStackView)
        NSLayoutConstraint.activate([
            finalStackView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            finalStackView.centerYAnchor.constraint(equalTo: view.centerYAnchor)
            ])
    }
    
    
    func useIndividualButtons(){
        view.addSubview(slowButton)
        view.addSubview(echoButton)
        NSLayoutConstraint.activate([
            slowButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            slowButton.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            echoButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            echoButton.topAnchor.constraint(equalTo: slowButton.bottomAnchor, constant: 30)
            ])
    }
}
