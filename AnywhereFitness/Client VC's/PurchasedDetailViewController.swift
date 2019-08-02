//
//  ClassDetailViewController.swift
//  AnywhereFitness
//
//  Created by Alex Rhodes on 7/29/19.
//  Copyright © 2019 Alex Rhodes. All rights reserved.
//

import UIKit

class PurchasedDetailViewController: UIViewController {
    
    @IBOutlet weak var classesRemainingLabel: UILabel!
    
    var classPackController: ClassPackController?
   

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)

        updateViews()

        // Do any additional setup after loading the view.
    }
    
    func updateViews() {
    
    }
    @IBAction func usePassButtonTapped(_ sender: UIButton) {
        var passesAvailable = 10
        
        if sender.isSelected == true { passesAvailable -= 1 }
//        } else if passesAvailable == 1 {
//            _ = UIAlertAction(title: "Oh no! You have run out of classes!", style: .cancel, handler: nil)
//        }
       classesRemainingLabel.text = "You have \(passesAvailable) remaining!"
    }
    
}
