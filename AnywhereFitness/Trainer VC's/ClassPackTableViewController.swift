//
//  ClassPackTableViewController.swift
//  AnywhereFitness
//
//  Created by Alex Rhodes on 7/29/19.
//  Copyright © 2019 Alex Rhodes. All rights reserved.
//

import UIKit

class ClassPackTableViewController: UITableViewController {
    
    var classPackArray: [ClassPack] = []
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Table view data source


    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return classPackArray.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "ClassPackCell", for: indexPath) as? ClassPackTableViewCell else {return UITableViewCell()}
        
        let classes = classPackArray[indexPath.row]
        cell.oneClass = classes
    


        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "AddClassDetailSegue" {
            if let addClassPack = segue.destination as? AddClassPackViewController {
                addClassPack.delegate = self
            }
        }
    
    }

}
extension ClassPackTableViewController: addClassPackDelegate {
    func classWasAdded(_ oneClass: ClassPack) {
        classPackArray.append(oneClass)
        dismiss(animated: true, completion: nil)
        tableView.reloadData()
    }
    
    
}
