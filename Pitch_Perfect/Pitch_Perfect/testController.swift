//
//  testController.swift
//  Pitch_Perfect
//
//  Created by admin on 10/5/18.
//  Copyright © 1518 admin. All rights reserved.
//

import UIKit

extension testController {
    
 
    
    
    override func viewDidLayoutSubviews() {
        [slowButton, echoButton, chipmunkButton, darthvaderButton, fastButton, reverbButton, stopButton].forEach{
            $0.layer.cornerRadius = $0.bounds.size.width / 2
            $0.clipsToBounds = true
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.darkBlue

        
        [slowButton, echoButton, chipmunkButton, darthvaderButton, fastButton, stopButton, reverbButton].forEach{
            $0.addTarget(self, action: #selector(handleButton), for: .touchDown)
        }
        [slowButton, echoButton, chipmunkButton, darthvaderButton, fastButton, stopButton, reverbButton].forEach{view.addSubview($0)}
        
        
        NSLayoutConstraint.activate([
            chipmunkButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            darthvaderButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            echoButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            fastButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            reverbButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            slowButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            stopButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),

            chipmunkButton.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 15),
            darthvaderButton.topAnchor.constraint(equalTo: chipmunkButton.bottomAnchor, constant: 15),
            echoButton.topAnchor.constraint(equalTo: darthvaderButton.bottomAnchor, constant: 15),
            fastButton.topAnchor.constraint(equalTo: echoButton.bottomAnchor, constant: 15),
            reverbButton.topAnchor.constraint(equalTo: fastButton.bottomAnchor, constant: 15),
            slowButton.topAnchor.constraint(equalTo: reverbButton.bottomAnchor, constant: 15),
            stopButton.topAnchor.constraint(equalTo: slowButton.bottomAnchor, constant: 15),
            
            //echoButton.widthAnchor.constraint(equalTo: slowButton.widthAnchor),
            //echoButton.heightAnchor.constraint(equalTo: slowButton.heightAnchor),
            ])
    }
    
    @objc func handleButton(){
        print("BUTTON PRESSED")
    }
}
