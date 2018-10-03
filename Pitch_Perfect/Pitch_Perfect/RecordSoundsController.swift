//
//  RecordSoundsController.swift
//  Pitch_Perfect
//
//  Created by admin on 10/3/18.
//  Copyright © 2018 admin. All rights reserved.
//

import UIKit

class RecordSoundsController: UIViewController {

    let instructionLabel: UILabel = {
       let label = UILabel()
        label.text = "Tap to start recording"
        label.textColor = UIColor.lightGray
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let recordButton: UIButton = {
       let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    
    let recordIcon: UIImageView = {
        let image = UIImageView()
        
        
        return image
    }()
    
    private func setupNavigationBar(){
        navigationItem.title = "Pitch Perfect"
    }
    
    private func setupUI(){
    
        [instructionLabel].forEach{view.addSubview($0)}
        
        NSLayoutConstraint.activate([
            instructionLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            instructionLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20)
            ])
//            instructionLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
//            instructionLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20).isActive = true
        
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.darkBlue
        setupNavigationBar()
        setupUI()
    }
}

