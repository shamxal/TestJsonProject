//
//  SignupController.swift
//  JsonFile
//
//  Created by Shamkhal Guliyev on 26.08.25.
//

import UIKit

class SignupController: UIViewController {
    @IBOutlet weak var fullnameTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    let viewModel = SignupViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
                
        viewModel.getUserData()
    }
    
    @IBAction func registerAction(_ sender: Any) {
        if let fullname = fullnameTextField.text,
           let email = emailTextField.text,
           let password = passwordTextField.text {
            
            let user: User = .init(name: fullname, email: email, password: password)
            viewModel.saveUserData(user: user)
            navigationController?.popViewController(animated: true)
        }
    }
}
