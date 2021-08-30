//
//  ClassExample.swift
//  Structs vs. Classes
//
//  Created by Ed Yama on 30/08/21.
//

import Foundation

class ClassHero: NSObject {
    var name: String
    var universe: String
    
    init(name: String, universe: String) {
        self.name = name
        self.universe = universe
    }
}
