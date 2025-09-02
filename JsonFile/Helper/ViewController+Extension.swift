//
//  ViewController+Extension.swift
//  JsonFile
//
//  Created by Shamkhal Guliyev on 26.08.25.
//

import UIKit

extension UIViewController {
    func showErrorAlert() {
        let alertController = UIAlertController(title: "Error", message: "Bele bir user yoxdur", preferredStyle: .alert)
        let action = UIAlertAction(title: "Ok", style: .default)
        alertController.addAction(action)
        present(alertController, animated: true)
    }
}
