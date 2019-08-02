//
//  ClassSearchViewController.swift
//  AnywhereFitness
//
//  Created by Alex Rhodes on 7/29/19.
//  Copyright © 2019 Alex Rhodes. All rights reserved.
//

import UIKit

class ClassSearchViewController: UIViewController {
    
    @IBOutlet weak var searchBar: UISearchBar!
    @IBOutlet weak var tableView: UITableView!
    
    var classPackController = ClassPackController()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.reloadData()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        tableView.reloadData()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ClassPurchaseSegue" {
            guard let indexPath = tableView.indexPathForSelectedRow,
                let classDetailVC = segue.destination as? ClassSearchDetailViewController else {return}
            classDetailVC.classPackController = classPackController
            classDetailVC.classPack = classPackController.classPackDummieArray[indexPath.row]
        }
        
    }
    
}

extension ClassSearchViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return classPackController.classPackDummieArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "ClientClassCell", for: indexPath) as? ClassSearchTableViewCell else {return UITableViewCell()}
        
        let classPacks = classPackController.classPackDummieArray[indexPath.row]
        cell.classPack = classPacks
        
        return cell
        
    }
    
    
}
extension ClassSearchViewController: UISearchBarDelegate {
    
    public func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        
    }
}
