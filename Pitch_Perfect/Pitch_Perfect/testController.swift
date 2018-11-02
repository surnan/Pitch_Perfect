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
        button.layer.cornerRadius = button.bounds.size.width / 2
        return button
    }()
    
    let echoButton: UIButton = {
        let openingImage = UIImage(named: "echo")
        let button = UIButton(type: UIButton.ButtonType.custom)
        button.setImage(openingImage, for: .normal)
        button.imageView?.contentMode = .scaleToFill
        button.backgroundColor = UIColor.green
        button.layer.cornerRadius = button.bounds.size.width / 2
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    let fastButton: UIButton = {
        let openingImage = UIImage(named: "fast")
        let button = UIButton(type: UIButton.ButtonType.custom)
        button.setImage(openingImage, for: .normal)
        button.imageView?.contentMode = .scaleToFill
        button.backgroundColor = UIColor.white
        button.layer.cornerRadius = button.bounds.size.width / 2
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()

    let chipmunkButton: UIButton = {
        let openingImage = UIImage(named: "chipmunk")
        let button = UIButton(type: UIButton.ButtonType.custom)
        button.setImage(openingImage, for: .normal)
        button.imageView?.contentMode = .scaleToFill
        button.backgroundColor = UIColor.teal
        button.layer.cornerRadius = button.bounds.size.width / 2
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    
    let darthvaderButton: UIButton = {
        let openingImage = UIImage(named: "darthvader")
        let button = UIButton(type: UIButton.ButtonType.custom)
        button.setImage(openingImage, for: .normal)
        button.imageView?.contentMode = .scaleToFill
        button.backgroundColor = UIColor.orange
        button.layer.cornerRadius = button.bounds.size.width / 2
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    let reverbButton: UIButton = {
        let openingImage = UIImage(named: "reverb")
        let button = UIButton(type: UIButton.ButtonType.custom)
        button.setImage(openingImage, for: .normal)
        button.imageView?.contentMode = .scaleToFill
        button.backgroundColor = UIColor.gray
        button.layer.cornerRadius = button.bounds.size.width / 2
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    let stopButton: UIButton = {
        let openingImage = UIImage(named: "stop")
        let button = UIButton(type: UIButton.ButtonType.custom)
        button.setImage(openingImage, for: .normal)
        button.imageView?.contentMode = .scaleToFill
        button.backgroundColor = UIColor.gray
        button.layer.cornerRadius = button.bounds.size.width / 2
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    
    let horizontalRowTop: UIStackView = {
       let stack = UIStackView()
        stack.axis = .horizontal
        stack.spacing = 50
        stack.translatesAutoresizingMaskIntoConstraints = false
        return stack
    }()
    
    let horizontalRowMiddle: UIStackView = {
        let stack = UIStackView()
        stack.axis = .horizontal
        stack.spacing = 50
        stack.translatesAutoresizingMaskIntoConstraints = false
        return stack
    }()
    
    let horizontalRowBtm: UIStackView = {
        let stack = UIStackView()
        stack.axis = .horizontal
        stack.spacing = 50
        stack.translatesAutoresizingMaskIntoConstraints = false
        return stack
    }()
    
    let finalVerticalStack: UIStackView = {
       var stack = UIStackView()
        stack.axis = .vertical
        stack.spacing = 20
        stack.translatesAutoresizingMaskIntoConstraints = false
        return stack
    }()
    
    

    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        DispatchQueue.main.async {
            [self.slowButton, self.echoButton, self.fastButton, self.reverbButton, self.chipmunkButton, self.darthvaderButton, self.stopButton].forEach{
                $0.layer.cornerRadius =  $0.bounds.size.width / 2
                $0.clipsToBounds = true
            }
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.yellow
        slowButton.addTarget(self, action: #selector(handleButton), for: .touchDown)
        echoButton.addTarget(self, action: #selector(handleButton), for: .touchDown)
        fastButton.addTarget(self, action: #selector(handleButton), for: .touchDown)
        reverbButton.addTarget(self, action: #selector(handleButton), for: .touchDown)


        useStack()


 
    }
    
    @objc func handleButton(){
        print("BUTTON PRESSED")
    }
    
    
    func useStack(){
        [slowButton, fastButton].forEach{horizontalRowTop.addArrangedSubview($0)}
        [chipmunkButton, darthvaderButton].forEach{horizontalRowMiddle.addArrangedSubview($0)}
        [echoButton, reverbButton].forEach{horizontalRowBtm.addArrangedSubview($0)}
        
        [horizontalRowTop, horizontalRowMiddle, horizontalRowBtm].forEach{finalVerticalStack.addArrangedSubview($0)}
        
        view.addSubview(finalVerticalStack)
        NSLayoutConstraint.activate([
            finalVerticalStack.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            finalVerticalStack.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -100)
            ])
    }
}




/*
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
 */


/*
     override func viewDidLayoutSubviews() {
         slowButton.layer.cornerRadius = slowButton.bounds.size.width / 2
         slowButton.clipsToBounds = true
 
         echoButton.layer.cornerRadius = echoButton.bounds.size.width / 2
         echoButton.clipsToBounds = true
 
         fastButton.layer.cornerRadius = echoButton.bounds.size.width / 2
         fastButton.clipsToBounds = true
 
     }
 */
