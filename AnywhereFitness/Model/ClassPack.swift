//
//  ClassPack.swift
//  AnywhereFitness
//
//  Created by Alex Rhodes on 7/29/19.
//  Copyright © 2019 Alex Rhodes. All rights reserved.
//

import Foundation

var classCategory: ClassCategory?

struct ClassPack: Equatable {
    var name: String
    var category: ClassCategory
    var description: String
    
    init(name: String, category: ClassCategory, description: String) {
        self.name = name
        self.category = category
        self.description = description

    }
}
