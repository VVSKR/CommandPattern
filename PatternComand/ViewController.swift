//
//  ViewController.swift
//  PatternComand
//
//  Created by Vova SKR on 27/11/2019.
//  Copyright © 2019 Vova SKR. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var commands: [Command] = [] {
        didSet {
            countLabel.text = "Кол-во задач в очерери - \(commands.count)"
        }
    }
    
    let light = LightInRoom()
    let music = MusicInRoom()
    
    let countLabel = UILabel(frame: CGRect(x: 70, y: 100, width: 300, height: 60))
    
    let lightOnButton = UIButton(frame: CGRect(x: 0, y: 0, width: 170, height: 60))
    let lightOffButton = UIButton(frame: CGRect(x: 0, y: 0, width: 170, height: 60))
    
    let musicOnButton = UIButton(frame: CGRect(x: 0, y: 0, width: 170, height: 60))
    let musicOffButton = UIButton(frame: CGRect(x: 0, y: 0, width: 170, height: 60))
    
    let startButton = UIButton(frame: CGRect(x: 0, y: 0, width: 200, height: 60))
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .gray
        setupButton()
        
    }
    
   
    
    
    private func setupButton() {
        
        view.addSubview(lightOnButton)
        lightOnButton.backgroundColor = .systemBlue
        lightOnButton.layer.cornerRadius = 20
        lightOnButton.center = view.center
        lightOnButton.center.x = view.center.x - 90
        lightOnButton.setTitle("Включить свет", for: .normal)
        lightOnButton.addTarget(self, action: #selector(tapLightOn), for: .touchUpInside)
        
        view.addSubview(lightOffButton)
        lightOffButton.backgroundColor = .systemBlue
        lightOffButton.layer.cornerRadius = 20
        lightOffButton.center = view.center
        lightOffButton.center.x = view.center.x + 90
        lightOffButton.setTitle("Выключить свет", for: .normal)
        lightOffButton.addTarget(self, action: #selector(tapLightOff), for: .touchUpInside)
        
        view.addSubview(musicOnButton)
        musicOnButton.backgroundColor = .systemBlue
        musicOnButton.layer.cornerRadius = 20
        musicOnButton.center.y = view.center.y + 100
        musicOnButton.center.x = view.center.x - 90
        musicOnButton.setTitle("Включить музыку", for: .normal)
        musicOnButton.addTarget(self, action: #selector(tapMusicOn), for: .touchUpInside)
        
        view.addSubview(musicOffButton)
        musicOffButton.backgroundColor = .systemBlue
        musicOffButton.layer.cornerRadius = 20
        musicOffButton.center.y = view.center.y + 100
        musicOffButton.center.x = view.center.x + 90
        musicOffButton.setTitle("Выключить музыку", for: .normal)
        musicOffButton.addTarget(self, action: #selector(tapMusicOff), for: .touchUpInside)
        
        view.addSubview(startButton)
        startButton.backgroundColor = .systemRed
        startButton.layer.cornerRadius = 20
        startButton.center.y = view.center.y + 200
        startButton.center.x = view.center.x
        startButton.setTitle("Выполнить все задачи", for: .normal)
        startButton.addTarget(self, action: #selector(tapStartButton), for: .touchUpInside)
        
        view.addSubview(countLabel)
        countLabel.text = "Кол-во задач в очерери - \(commands.count)"
        
    }
    
    
    @objc
    func tapLightOn() {
        commands.append(LightOnCommand(light: light))
        print("Задача добавленна")
    }
    
    
    @objc
    func tapLightOff() {
        commands.append(LightOffCommand(light: light))
        print("Задача добавленна")
    }
    
    
    @objc
    func tapMusicOn() {
        commands.append(MusicOnCommand(music: music))
        print("Задача добавленна")
    }
    
    
    @objc
    func tapMusicOff() {
        commands.append(MusicOffCommand(music: music))
        print("Задача добавленна")
    }
    
    
    @objc
    func tapStartButton() {
        commands.forEach { $0.execute() }
        commands = []
    }
}

