//
//  MusicChangeVolume.swift
//  PatternComand
//
//  Created by Vova SKR on 27/11/2019.
//  Copyright © 2019 Vova SKR. All rights reserved.
//

import Foundation

class MusicChangeVolume: Command {
    
    var music: MusicInRoom
    var volume: Int
    
    init(music: MusicInRoom, volume: Int) {
        self.music = music
        self.volume = volume
    }
    
    func execute() {
        music.changeVolume(to: volume)
    }
}
