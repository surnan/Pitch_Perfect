//
//  PlaySoundController.swift
//  Pitch_Perfect
//
//  Created by admin on 10/3/18.
//  Copyright © 2018 admin. All rights reserved.
//

import UIKit



class PlaySoundController: UIViewController {
    
    let iconSize: CGFloat = 25.0
    
    let slowButton: UIButton = {
        let openingImage = UIImage(named: imageNames.slow.rawValue)
        let button = UIButton(type: UIButton.ButtonType.custom)
        button.setImage(openingImage, for: .normal)
        button.imageView?.contentMode = .scaleAspectFit
        
        button.frame = CGRect(x: 0, y: 0, width: 160    , height: 125)
        
        
//        button.frame = CGRect(x: 0, y: 0, width: iconSize, height: iconSize)
        
        button.layer.cornerRadius = 0.5 * button.bounds.size.width
        button.backgroundColor = UIColor.teal
        
        
//        button.clipsToBounds = true
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()

    let fastButton: UIButton = {
        let openingImage = UIImage(named: imageNames.fast.rawValue)
        let button = UIButton(type: UIButton.ButtonType.custom)
        button.imageView?.contentMode = .scaleAspectFill
        button.setImage(openingImage, for: .normal)
        button.backgroundColor = UIColor.green
        button.clipsToBounds = true
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()

    let chipmunkButton: UIButton = {
        let openingImage = UIImage(named: imageNames.chipmunk.rawValue)
        let button = UIButton(type: UIButton.ButtonType.custom)
        button.setImage(openingImage, for: .normal)
        button.backgroundColor = UIColor.red
        button.clipsToBounds = true
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()

    let darthvaderButton: UIButton = {
        let openingImage = UIImage(named: imageNames.darthvader.rawValue)
        let button = UIButton(type: UIButton.ButtonType.custom)
        button.setImage(openingImage, for: .normal)
        button.backgroundColor = UIColor.white
        button.clipsToBounds = true
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()

    let echoButton: UIButton = {
        let openingImage = UIImage(named: imageNames.echo.rawValue)
        let button = UIButton(type: UIButton.ButtonType.custom)
        button.setImage(openingImage, for: .normal)
        button.backgroundColor = UIColor.purple
        button.clipsToBounds = true
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()

    let reverbButton: UIButton = {
        let openingImage = UIImage(named: imageNames.reverb.rawValue)
        let button = UIButton(type: UIButton.ButtonType.custom)
        button.setImage(openingImage, for: .normal)
        button.backgroundColor = UIColor.gray
        button.clipsToBounds = true
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()

    let topRow: UIStackView = {
       let stack = UIStackView()
        stack.axis = .horizontal
        stack.alignment = .center
        stack.spacing = 50
        stack.translatesAutoresizingMaskIntoConstraints = false
        return stack
    }()

    let middleRow: UIStackView = {
        let stack = UIStackView()
        stack.axis = .horizontal
        stack.alignment = .center
        stack.spacing = 50
        stack.translatesAutoresizingMaskIntoConstraints = false
        return stack
    }()
    
    let bottomRow: UIStackView = {
        let stack = UIStackView()
        stack.axis = .horizontal
        stack.alignment = .center
        stack.spacing = 50
        stack.translatesAutoresizingMaskIntoConstraints = false
        return stack
    }()
    
    let fullStack: UIStackView = {
        let stack = UIStackView()
        stack.axis = .vertical
        stack.alignment = .center
        stack.spacing = 50
        stack.translatesAutoresizingMaskIntoConstraints = false
        return stack
    }()
    
    
    private func setupNavigationBar(){
        navigationItem.title = "Pitch Perfect"
    }
    
    
    
    func setupButtons(){
        
    }
    
    
    private func setupStackViews(){
        [slowButton, fastButton].forEach{topRow.addArrangedSubview($0)}
        [chipmunkButton, darthvaderButton].forEach{middleRow.addArrangedSubview($0)}
        [echoButton, reverbButton].forEach{bottomRow.addArrangedSubview($0)}
        [topRow, middleRow, bottomRow].forEach{fullStack.addArrangedSubview($0)}
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.darkBlue
        setupNavigationBar()
        setupStackViews()
        
        [fullStack,topRow, middleRow, bottomRow].forEach{view.addSubview($0)}
       
//        fullStack.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
//        fullStack.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        
        NSLayoutConstraint.activate([
            topRow.heightAnchor.constraint(equalToConstant: 150),
            middleRow.heightAnchor.constraint(equalToConstant: 150),
            bottomRow.heightAnchor.constraint(equalToConstant: 150),
            
            topRow.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            middleRow.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            bottomRow.centerXAnchor.constraint(equalTo: view.centerXAnchor),

            topRow.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 30),
            middleRow.topAnchor.constraint(equalTo: topRow.bottomAnchor, constant: 30),
            bottomRow.topAnchor.constraint(equalTo: middleRow.bottomAnchor, constant: 30),
            ])
    }
}

