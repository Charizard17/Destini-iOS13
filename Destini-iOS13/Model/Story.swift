//
//  Sotry.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import Foundation

struct Story {
    let title: String
    let choice1: String
    let chouce2: String
    
    init(t: String, c1: String, c2: String) {
        self.title = t
        self.choice1 = c1
        self.chouce2 = c2
    }
}
