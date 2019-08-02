//
//  ClassPackController.swift
//  AnywhereFitness
//
//  Created by Alex Rhodes on 7/30/19.
//  Copyright © 2019 Alex Rhodes. All rights reserved.
//

import Foundation


class ClassPackController {
    
    var classCategory: ClassCategory?
    
    var classPacks: [ClassPack] = []
    
    var purchasedClassPacks: [ClassPack] = []
    
    var classPackDummieArray: [ClassPack] = [
        ClassPack(name: "Alex's Hip Hop Cardio", category: ClassCategory.Zumba.description, description: "We will have class on M-W-F, 555 W Main St., 6PM-7PM"),
        ClassPack(name: "HIIT Extravaganza", category: ClassCategory.HIIT.description, description: "We will have class on M-W-F, 555 W Main St., 6PM-7PM"),
        ClassPack(name: "Yogi Fun", category: ClassCategory.Parkour.description, description: "We will have class on M-W-F, 555 W Main St., 6PM-7PM")
    ]
    
    func createClassPack(name: String, category: String, description: String) {
            let classPack = ClassPack(name: name, category: category, description: description)
            classPacks.append(classPack)
    }
    
    func appendPurchasedClassPack(name: String, category: String, description: String) {
        let classPack = ClassPack(name: name, category: category, description: description)
        purchasedClassPacks.append(classPack)
    }
    
    
}



