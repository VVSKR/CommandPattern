//
//  LightOffCommand.swift
//  PatternComand
//
//  Created by Vova SKR on 27/11/2019.
//  Copyright © 2019 Vova SKR. All rights reserved.
//

import Foundation

class LightOffCommand: Command {
    
    var light: LightInRoom
    
    init(light: LightInRoom) {
        self.light = light
    }
    
    func execute() {
        light.switchOff()
    }
}
