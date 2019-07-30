//
//  AddClassPackViewController.swift
//  AnywhereFitness
//
//  Created by Alex Rhodes on 7/29/19.
//  Copyright © 2019 Alex Rhodes. All rights reserved.
//

import UIKit

protocol addClassPackDelegate {
    func classWasAdded(_ oneClass: ClassPack)
}


class AddClassPackViewController: UIViewController {
    
   
    @IBOutlet weak var classNameTextField: UITextField!
    @IBOutlet var classCategoryTableView: UITableView!
    @IBOutlet weak var classDescriptionTextView: UITextView!
    
    var delegate: addClassPackDelegate?
    
    var classCategory: ClassCategory?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        categoryTableViewConfiguration()
        
        // Aesthtics maybe after you finish coding. Must add an outlet for button.
    }
    
    @objc func handleDropDown() {
        print("Drop down menu")
    }
    func categoryTableViewConfiguration() {
        classCategoryTableView = UITableView()
        classCategoryTableView.delegate = self
        classCategoryTableView.dataSource = self
        view.addSubview(classCategoryTableView)
    }
    
    @IBAction func saveClassButtonPressed(_ sender: UIButton) {
        guard let addNewClassPackName = classNameTextField.text, !addNewClassPackName.isEmpty,
            let addClassDescription = classDescriptionTextView.text, !addClassDescription.isEmpty else {return}
        
        //        let classPack = ClassPack(name: addNewClassPackName, category: addClassCategory, description: addClassDescription)
        //
        //       delegate?.classWasAdded(classPack)
    }
}

extension AddClassPackViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let button = UIButton(type: .system)
        button.setTitle("Select Category", for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 14)
        button.titleLabel?.textAlignment = .left
        button.setTitleColor(.white, for: .normal)
        button.addTarget(self, action: #selector(handleDropDown), for: .touchUpInside)
        
        tableView.register(DropDownTableViewCell.self, forCellReuseIdentifier: "CateoryCell")
        
        button.backgroundColor = .darkGray
        
        return button
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "CateoryCell", for: indexPath) as? DropDownTableViewCell else {return UITableViewCell()}

         cell.categoryTitleLabel.text = classCategory?.hashValue.description
        
     return cell
    }
    
    
}
