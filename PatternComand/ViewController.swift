//
//  ViewController.swift
//  PatternComand
//
//  Created by Vova SKR on 27/11/2019.
//  Copyright © 2019 Vova SKR. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var commands: [Command] = []
    
    let light = LightInRoom()
    let music = MusicInRoom()
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .purple
        
        let lightOnCommand = LightOnCommand(light: light)
        let musicOnCommand = MusicOnCommand(music: music)
        
        let lightOffCommand = LightOffCommand(light: light)
        let musicOffCommand = MusicOffCommand(music: music)
        
        let musicChangeVolume = MusicChangeVolume(music: music, volume: 7)
        
        commands.append(lightOnCommand)
        commands.append(musicOnCommand)
        commands.append(musicChangeVolume)
       
        commands.append(musicOffCommand)
        commands.append(musicOnCommand)
        
        commands.append(lightOffCommand)
        
        start()
    }
    
    func start () {
        commands.forEach { $0.execute() }
    }


}

