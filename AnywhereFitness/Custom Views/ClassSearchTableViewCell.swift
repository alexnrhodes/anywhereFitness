//
//  ClientClassTableViewCell.swift
//  AnywhereFitness
//
//  Created by Alex Rhodes on 7/29/19.
//  Copyright © 2019 Alex Rhodes. All rights reserved.
//

import UIKit

class ClassSearchTableViewCell: UITableViewCell {
    
    @IBOutlet weak var classNameLabel: UILabel!
    @IBOutlet weak var classCategoryLabel: UILabel!
    
    
    var classCategory: ClassCategory?
    var classPackController: ClassPackController?
    var classPack: ClassPack? {
        didSet {
            updateViews()
        }
    }
    
    func updateViews() {
        
        classNameLabel.text = classPack?.name
        classCategoryLabel.text = classCategory?.description
    }


    @IBAction func detailsButtonTapped(_ sender: UIButton) {
    }
    
    
}
