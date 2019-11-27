//
//  MusicInRoom.swift
//  PatternComand
//
//  Created by Vova SKR on 27/11/2019.
//  Copyright © 2019 Vova SKR. All rights reserved.
//

import Foundation

class MusicInRoom {
    
    var volume: Int = 5
    
    func play() {
        print("Music switched on, volume \(volume)")
    }
    
    func pause() {
        print("Music switched Off")
    }
    
    func changeVolume(to volume: Int) {
        self.volume = volume
        print("volume changed to \(volume)")
    }
}
