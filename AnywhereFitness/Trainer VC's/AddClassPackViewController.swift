//
//  AddClassPackViewController.swift
//  AnywhereFitness
//
//  Created by Alex Rhodes on 7/29/19.
//  Copyright © 2019 Alex Rhodes. All rights reserved.
//

import UIKit

enum ClassCategory: Int, CaseIterable {
    
    case HIIT
    case Zumba
    case Parkour
    case Yoga
    case CrossTraining
    
    var description: String {
        switch self {
        case .HIIT: return "HIIT"
        case .Zumba: return "Zumba"
        case .Parkour: return "Parkour"
        case .Yoga: return "Yoga"
        case .CrossTraining: return "Cross Training"
        }
    }
}

class AddClassPackViewController: UIViewController {
    
   
    @IBOutlet weak var classNameTextField: UITextField!
    @IBOutlet weak var classDescriptionTextView: UITextView!
    
    
    
    var showMenu = false
    
    var classPackController: ClassPackController?
    
    var classCategoryTableView: UITableView!
    
    var classCategory: ClassCategory?
    
    let categoryLabel = UILabel()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        categoryTableViewConfiguration()
        
        view.addSubview(categoryLabel)
        
        categoryLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        categoryLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 32).isActive = true
        categoryLabel.heightAnchor.constraint(equalToConstant: 50).isActive = true
        categoryLabel.widthAnchor.constraint(equalToConstant: 300).isActive = true
        
        // Aesthtics maybe after you finish coding. Must add an outlet for button.
    }
    
   
    
    // MARK: Dropdown Menu Shit
    
    @objc func handleDropDown() {
        
        showMenu = !showMenu
        
        var indexPaths = [IndexPath]()
        
        ClassCategory.allCases.forEach { (description) in
            let indexPath = IndexPath(row: description.rawValue, section: 0)
            indexPaths.append(indexPath)
        }
        
        if showMenu {
            classCategoryTableView.insertRows(at: indexPaths, with: .fade)
        } else {
            classCategoryTableView.deleteRows(at: indexPaths, with: .fade)
        }
    }
    
    func categoryTableViewConfiguration() {
        classCategoryTableView = UITableView()
        classCategoryTableView.delegate = self
        classCategoryTableView.dataSource = self
        classCategoryTableView.translatesAutoresizingMaskIntoConstraints = false
        classCategoryTableView.separatorStyle = .none
       classCategoryTableView.isScrollEnabled = false
        classCategoryTableView.rowHeight = 50
        
        classCategoryTableView.register(DropDownTableViewCell.self, forCellReuseIdentifier: "CateoryCell")

        view.addSubview(classCategoryTableView)
        
        classCategoryTableView.topAnchor.constraint(equalTo: view.topAnchor, constant: 160).isActive = true
        classCategoryTableView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        classCategoryTableView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        classCategoryTableView.heightAnchor.constraint(equalToConstant: 280).isActive = true
    }
    
    // MARK: Button Actions
    
    @IBAction func saveClassButtonPressed(_ sender: UIButton) {
        guard let addNewClassPackName = classNameTextField.text, !addNewClassPackName.isEmpty,
            let addClassDescription = classDescriptionTextView.text, !addClassDescription.isEmpty,
            let classCategory = categoryLabel.text else {return}
        
        classPackController?.createClassPack(name: addNewClassPackName, category: classCategory, description: addClassDescription)
        
        dismiss(animated: true, completion: nil) //trying to make it go back to previous VC
       
    }
}


// MARK: Dropdown Menu Shit

extension AddClassPackViewController: UITableViewDelegate, UITableViewDataSource {
    
    
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let button = UIButton(type: .system)
        button.setTitle("Select Category", for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 14)
        button.setTitleColor(.white, for: .normal)
        button.addTarget(self, action: #selector(handleDropDown), for: .touchUpInside)
        button.backgroundColor = .darkGray
        
        return button
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return showMenu ? ClassCategory.allCases.count : 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "CateoryCell", for: indexPath) as? DropDownTableViewCell else {return UITableViewCell()}

        cell.categoryTitleLabel.text = ClassCategory(rawValue: indexPath.row)?.description
        cell.backgroundColor = UIColor.black
        
     return cell
    }
   
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
       guard let description = ClassCategory(rawValue: indexPath.row)?.description else {return}
        
        categoryLabel.text = description
        tableView.reloadData()

    }
    
}

