//
//  PlaySoundController+var.swift
//  Pitch_Perfect
//
//  Created by admin on 10/17/18.
//  Copyright © 2018 admin. All rights reserved.
//

import UIKit

class PlaySoundController: UIViewController {
    
    let slowButton: UIButton = {
        let openingImage = UIImage(named: "slow")
        let button = UIButton(type: UIButton.ButtonType.custom)
        button.setImage(openingImage, for: .normal)
        button.imageView?.contentMode = .scaleToFill
        button.backgroundColor = UIColor.red
        button.titleLabel?.text = "SLOW"
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    let echoButton: UIButton = {
        let openingImage = UIImage(named: "echo")
        let button = UIButton(type: UIButton.ButtonType.custom)
        button.setImage(openingImage, for: .normal)
        button.imageView?.contentMode = .scaleToFill
        button.backgroundColor = UIColor.green
        button.titleLabel?.text = "ECHO"
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    
    let chipmunkButton: UIButton = {
        let openingImage = UIImage(named: "chipmunk")
        let button = UIButton(type: UIButton.ButtonType.custom)
        button.setImage(openingImage, for: .normal)
        button.imageView?.contentMode = .scaleToFill
        button.backgroundColor = UIColor.lightGray
        button.titleLabel?.text = "CHIPMUNK"
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    let darthvaderButton: UIButton = {
        let openingImage = UIImage(named: "darthvader")
        let button = UIButton(type: UIButton.ButtonType.custom)
        button.setImage(openingImage, for: .normal)
        button.imageView?.contentMode = .scaleToFill
        button.backgroundColor = UIColor.mediumPurple
        button.titleLabel?.text = "DARTHVADER"
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    let fastButton: UIButton = {
        let openingImage = UIImage(named: "fast")
        let button = UIButton(type: UIButton.ButtonType.custom)
        button.setImage(openingImage, for: .normal)
        button.imageView?.contentMode = .scaleToFill
        button.backgroundColor = UIColor.lightOrange
        button.titleLabel?.text = "FAST"
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    let stopButton: UIButton = {
        let openingImage = UIImage(named: "stop")
        let button = UIButton(type: UIButton.ButtonType.custom)
        button.setImage(openingImage, for: .normal)
        button.imageView?.contentMode = .scaleToFill
        button.backgroundColor = UIColor.yellow
        button.titleLabel?.text = "STOP"
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    let reverbButton: UIButton = {
        let openingImage = UIImage(named: "reverb")
        let button = UIButton(type: UIButton.ButtonType.custom)
        button.setImage(openingImage, for: .normal)
        button.imageView?.contentMode = .scaleToFill
        button.backgroundColor = UIColor.veryLightGrey
        button.titleLabel?.text = "REVERB"
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
}

