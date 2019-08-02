//
//  ClassTableViewController.swift
//  AnywhereFitness
//
//  Created by Alex Rhodes on 7/29/19.
//  Copyright © 2019 Alex Rhodes. All rights reserved.
//

import UIKit

class PurchasedTableViewController: UITableViewController {
    
    var classPackController = ClassPackController()
    

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return classPackController.purchasedClassPacks.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "PurchasedClassCell", for: indexPath) as? PurchasedTableViewCell else {return UITableViewCell()}
        
        let classPacks = classPackController.purchasedClassPacks[indexPath.row]
        cell.classPack = classPacks
        
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "PurchasedClassDetailSegue" {
            guard let purchasedDetailVC = segue.destination as? PurchasedDetailViewController else {return}
            purchasedDetailVC.classPackController = classPackController
        }
    }

}
