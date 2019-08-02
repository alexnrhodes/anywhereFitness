//
//  ClassSearchDetailViewController.swift
//  AnywhereFitness
//
//  Created by Alex Rhodes on 7/29/19.
//  Copyright © 2019 Alex Rhodes. All rights reserved.
//

import UIKit


class ClassSearchDetailViewController: UIViewController {
    
    @IBOutlet weak var classNameLabel: UILabel!
    @IBOutlet weak var instructorNameLabel: UILabel!
    @IBOutlet weak var classDescriptionTextView: UITextView!
    @IBOutlet weak var classCategoryLabel: UILabel!
    
    var classPackController: ClassPackController?
    
    var trainerController = TrainerController()
    
    var classPack: ClassPack?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateViews()
        
        classNameLabel.textColor = UIColor.white
        instructorNameLabel.textColor = UIColor.white
        classDescriptionTextView.textColor = UIColor.white
        
       
    }
    
    
    @IBAction func buyClassPackButton(_ sender: UIButton) {
        guard let className = classNameLabel.text, !className.isEmpty,
            let classCategory = classPackController?.classCategory?.description, !classCategory.isEmpty,
            let classDescription = classDescriptionTextView.text, !classDescription.isEmpty else {return}
        
        classPackController?.appendPurchasedClassPack(name: className, category: classCategory, description: classDescription)
        
        
    }
    
    func updateViews() {
        guard let classPackSelected = classPack else {return}
        classNameLabel.text = classPackSelected.name
        instructorNameLabel.text = trainerController.trainer.name
        classDescriptionTextView.text = classPackSelected.description
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
}
