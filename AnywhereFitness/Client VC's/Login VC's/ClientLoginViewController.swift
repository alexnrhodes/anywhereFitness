//
//  ClientLoginViewController.swift
//  AnywhereFitness
//
//  Created by Alex Rhodes on 7/29/19.
//  Copyright © 2019 Alex Rhodes. All rights reserved.
//

import UIKit

class ClientLoginViewController: UIViewController {
    
    @IBOutlet weak var userEmailTextField: UITextField!
    @IBOutlet weak var userPasswordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func loginButtonPressed(_ sender: UIButton) {
//        Do i set up stored anything here?
    }
    
    @IBAction func signUpButtonPressed(_ sender: UIButton) {
//        Tinking I should store name and email from previous screen
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ClientSignUpSegue" {
            guard let clientSignUpVC = segue.destination as? ClientSignUpViewController else {return}
        }
    }

}
