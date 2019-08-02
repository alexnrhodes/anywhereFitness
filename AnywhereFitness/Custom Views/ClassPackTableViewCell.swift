//
//  ClassPackTableViewCell.swift
//  AnywhereFitness
//
//  Created by Alex Rhodes on 7/29/19.
//  Copyright © 2019 Alex Rhodes. All rights reserved.
//

import UIKit

class ClassPackTableViewCell: UITableViewCell {
    
    @IBOutlet weak var classNameLabel: UILabel!
    @IBOutlet weak var categoryLabel: UILabel!
    
    var classPackController: ClassPackController?
    
    var classPack: ClassPack? {
        didSet {
            updateView()
        }
    }
    
    func updateView() {
        guard let classPack = classPack else {return}
        
        categoryLabel.textColor = UIColor.white
        classNameLabel.textColor = UIColor.white
        classNameLabel.text = classPack.name
        categoryLabel.text = classPack.category
    }
    
    
}
