//
//  LoginController.swift
//  JsonFile
//
//  Created by Shamkhal Guliyev on 26.08.25.
//

import UIKit

class LoginController: UIViewController {
    @IBOutlet private weak var emailTextField: UITextField!
    @IBOutlet private weak var passwordTextField: UITextField!

    let viewModel = LoginViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        viewModel.readUserData()
    }
    
    @IBAction func registerAction(_ sender: Any) {
        let controller = storyboard?.instantiateViewController(withIdentifier: "\(SignupController.self)")
        navigationController?.show(controller!, sender: nil)
    }
    
    @IBAction func loginAction(_ sender: Any) {
        if let email = emailTextField.text,
           let password = passwordTextField.text {

            if viewModel.isUserExist(email: email, password: password) {
                let controller = storyboard?.instantiateViewController(withIdentifier: "\(ViewController.self)")
                navigationController?.show(controller!, sender: nil)
            } else {
                showErrorAlert()
            }
        }
    }
}
