//
//  MusicOffCommand.swift
//  PatternComand
//
//  Created by Vova SKR on 27/11/2019.
//  Copyright © 2019 Vova SKR. All rights reserved.
//

import Foundation

class MusicOffCommand: Command {
    
    var music: MusicInRoom
    
    init(music: MusicInRoom) {
        self.music = music
    }
    
    func execute() {
        music.pause()
    }
}
