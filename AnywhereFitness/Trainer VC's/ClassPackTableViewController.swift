//
//  ClassPackTableViewController.swift
//  AnywhereFitness
//
//  Created by Alex Rhodes on 7/29/19.
//  Copyright © 2019 Alex Rhodes. All rights reserved.
//

import UIKit

class ClassPackTableViewController: UITableViewController {
    
    var classPackController = ClassPackController()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.backgroundColor = UIColor.black
        
        tableView.reloadData()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        tableView.backgroundColor = UIColor.black
        super.viewWillAppear(true)
        tableView.reloadData()
    }
    
    // MARK: - Table view data source
    
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return classPackController.classPacks.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "ClassPackCell", for: indexPath) as? ClassPackTableViewCell else {return UITableViewCell()}
        
        let classes = classPackController.classPacks[indexPath.row]
        cell.classPack = classes
        
        
        
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "AddClassDetailSegue" {
            if let addClassPackVC = segue.destination as? AddClassPackViewController {
                addClassPackVC.classPackController = classPackController
            }
        }
        if segue.identifier == "EditClassDetailSegue" {
            if let addClassPackVC = segue.destination as? AddClassPackViewController {
                addClassPackVC.classPackController = classPackController
            }
        }
    }
    
}
