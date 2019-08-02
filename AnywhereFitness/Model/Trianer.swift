//
//  Instructor.swift
//  AnywhereFitness
//
//  Created by Alex Rhodes on 7/30/19.
//  Copyright © 2019 Alex Rhodes. All rights reserved.
//

import Foundation

struct Trainer: Equatable {
    var name: String
    var email: String
    var password: String
    
    init(name: String, email: String, password: String) {
        self.name = name
        self.email = email
        self.password = password
    }
}
