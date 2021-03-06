//
//  PlaySoundsController.swift
//  Pitch_Perfect
//
//  Created by admin on 10/5/18.
//  Copyright © 2018 admin. All rights reserved.
//

import UIKit

class PlaySoundsController: UIViewController {
    
    enum ButtonTags: Int {
        case slow = 111
        case echo = 222
        case fast = 333
        case chipmunk = 444
        case darthvader = 555
        case reverb = 666
    }
    
    let slowButton: UIButton = {
        let openingImage = UIImage(named: "slow")
        let button = UIButton(type: UIButton.ButtonType.custom)
        button.setImage(openingImage, for: .normal)
        button.imageView?.contentMode = .scaleToFill
        button.backgroundColor = UIColor.red
        button.tag = ButtonTags.slow.rawValue
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
        button.tag = ButtonTags.echo.rawValue
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    let fastButton: UIButton = {
        let openingImage = UIImage(named: "fast")
        let button = UIButton(type: UIButton.ButtonType.custom)
        button.setImage(openingImage, for: .normal)
        button.imageView?.contentMode = .scaleToFill
        button.backgroundColor = UIColor.yellow
        button.layer.cornerRadius = button.bounds.size.width / 2
        button.tag = ButtonTags.fast.rawValue
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
        button.tag = ButtonTags.chipmunk.rawValue
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
        button.tag = ButtonTags.darthvader.rawValue
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
        button.tag = ButtonTags.reverb.rawValue
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    let stopButton: UIButton = {
        let openingImage = UIImage(named: "_stop")
        let button = UIButton(type: UIButton.ButtonType.custom)
        button.setImage(openingImage, for: .normal)
        button.imageView?.contentMode = .scaleToFill
        button.backgroundColor = UIColor.white
        button.layer.cornerRadius = button.bounds.size.width / 2
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    let backButton: UIButton = {
       let button = UIButton()
        let myString = "RECORD A NEW SOUND"
        let myAttrString = NSAttributedString(string: myString, attributes: [NSAttributedString.Key.font: UIFont(name: "Verdana-Bold", size: 16.0) as Any,
                                                                             NSAttributedString.Key.foregroundColor : UIColor.teal,
                                                                            ])
        button.setAttributedTitle(myAttrString, for: .normal)
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
        setupNavigationBar()
        view.backgroundColor = UIColor.darkBlue
        
        [slowButton, echoButton, fastButton, reverbButton, chipmunkButton, darthvaderButton].forEach{
            $0.addTarget(self, action: #selector(handleSoundButton), for: .touchDown)
        }
        
        stopButton.addTarget(self, action: #selector(handleStopButton), for: .touchDown)
        backButton.addTarget(self, action: #selector(handleBackButton), for: .touchDown)
        
        setupSoundButtonStack()
        
        [finalVerticalStack, stopButton, backButton].forEach{view.addSubview($0)}
        
        NSLayoutConstraint.activate([
            finalVerticalStack.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            finalVerticalStack.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -100),
            stopButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            stopButton.topAnchor.constraint(equalTo: finalVerticalStack.bottomAnchor, constant: 30),
            backButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            backButton.topAnchor.constraint(equalTo: stopButton.bottomAnchor, constant: 40)
            ])
    }
    
    private func setupNavigationBar(){
        navigationItem.title = "Pitch Perfect"
        self.navigationItem.hidesBackButton = true
    }
    
    @objc func handleSoundButton(_ sender: UIButton?){
        print("BUTTON PRESSED, tag = \(sender?.tag ?? 0)")
    }

    
    @objc func handleStopButton(_ sender: UIButton?){
        print("STOPPED Recording")
    }

    
    @objc func handleBackButton(_ sender: UIButton?){
        print("RECORD NEW SOUND PRESSED")
        navigationController?.popViewController(animated: true)
    }
    
    
    func setupSoundButtonStack(){
        [slowButton, fastButton].forEach{horizontalRowTop.addArrangedSubview($0)}
        [chipmunkButton, darthvaderButton].forEach{horizontalRowMiddle.addArrangedSubview($0)}
        [echoButton, reverbButton].forEach{horizontalRowBtm.addArrangedSubview($0)}
        [horizontalRowTop, horizontalRowMiddle, horizontalRowBtm].forEach{finalVerticalStack.addArrangedSubview($0)}
    }
}

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
