//
//  RecordSoundsController.swift
//  Pitch_Perfect
//
//  Created by admin on 10/3/18.
//  Copyright © 2018 admin. All rights reserved.
//

import UIKit

class RecordSoundsController: UIViewController {
    let micIconSize: CGFloat = 150.0

    let instructionLabel: UILabel = {
        let label = UILabel()
        label.textColor = UIColor.lightGray
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()

    var isRecording = false

    let recordButton: UIButton = {
        let openingImage = UIImage(named: imageNames.microphone.rawValue)
        let button = UIButton(type: UIButton.ButtonType.custom)
        button.setImage(openingImage, for: .normal)
        button.backgroundColor = UIColor.teal
        button.clipsToBounds = true
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()


    @objc private func handleRecordButton(){
<<<<<<< HEAD
        print("BUTTON PRESSED")

||||||| merged common ancestors
        print("BUTTON PRESSED")
        
=======
>>>>>>> inset-stop-into-horizontal-middle-stack
        if isRecording == false {
            let openingImage = UIImage(named: imageNames.stop.rawValue)
            recordButton.setImage(openingImage, for: .normal)
        } else {
            let openingImage = UIImage(named: imageNames.microphone.rawValue)
            recordButton.setImage(openingImage, for: .normal)
            let newPlaySoundController = PlaySoundsController()
            navigationController?.pushViewController(newPlaySoundController, animated: true)
        }
        isRecording = !isRecording
<<<<<<< HEAD
        updateRecordLabel()
||||||| merged common ancestors
=======
        updateInstructionLabel()
>>>>>>> inset-stop-into-horizontal-middle-stack
    }

    private func updateRecordButton(){
        recordButton.layer.cornerRadius = micIconSize / 2
    }


    func setupNavigationBar(){
        navigationItem.title = "Pitch Perfect"
    }

    func updateRecordLabel(){
        instructionLabel.text = isRecording ?  "Tap to stop recording" : "Tap to start recording"
    }
    
    
    private func setupUI(){
        updateRecordLabel()
        recordButton.addTarget(self, action: #selector(handleRecordButton), for: .touchDown)
        updateRecordButton()
        [instructionLabel, recordButton].forEach{view.addSubview($0)}
        NSLayoutConstraint.activate([
            instructionLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            instructionLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20),
            recordButton.widthAnchor.constraint(equalToConstant: micIconSize),
            recordButton.heightAnchor.constraint(equalToConstant: micIconSize),
            recordButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            recordButton.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            ])
    }
<<<<<<< HEAD

||||||| merged common ancestors
    
=======
    
    private func updateInstructionLabel(){
        instructionLabel.text = isRecording ? "Tap to stop recording" : "Tap to start recording"
    }
    
>>>>>>> inset-stop-into-horizontal-middle-stack
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.darkBlue
        updateInstructionLabel()
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        setupNavigationBar()
        setupUI()
    }
}

