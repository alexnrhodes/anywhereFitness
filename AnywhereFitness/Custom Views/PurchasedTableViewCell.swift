//
//  PurchasedTableViewCell.swift
//  AnywhereFitness
//
//  Created by Alex Rhodes on 7/29/19.
//  Copyright © 2019 Alex Rhodes. All rights reserved.
//

import UIKit

class PurchasedTableViewCell: UITableViewCell {

    @IBOutlet weak var classNameLabel: UILabel!
    @IBOutlet weak var instructorNameLabel: UILabel!
    
    var classPack: ClassPack?
    
    var trainer: Trainer?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        classNameLabel.text = classPack?.name
        instructorNameLabel.text = trainer?.name
    
    }

}
