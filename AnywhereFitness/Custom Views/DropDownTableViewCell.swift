//
//  CropDownTableViewCell.swift
//  AnywhereFitness
//
//  Created by Alex Rhodes on 7/30/19.
//  Copyright © 2019 Alex Rhodes. All rights reserved.
//

import UIKit

class DropDownTableViewCell: UITableViewCell {
    
    let categoryTitleLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 14)
        label.textColor = .white
        return label
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        addSubview(categoryTitleLabel)
        categoryTitleLabel.translatesAutoresizingMaskIntoConstraints = false
        categoryTitleLabel.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        categoryTitleLabel.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        
    }
    
    
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }


    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
