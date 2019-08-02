//
//  ClientSignUpViewController.swift
//  AnywhereFitness
//
//  Created by Alex Rhodes on 7/29/19.
//  Copyright © 2019 Alex Rhodes. All rights reserved.
//

import UIKit

class ClientSignUpViewController: UIViewController {
    
    @IBOutlet weak var userNameTextField: UITextField!
    @IBOutlet weak var userEmailTextField: UITextField!
    @IBOutlet weak var userPasswordTextField: UITextField!

    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func signUpButtonPressed(_ sender: UIButton) {
    }
    

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
}
