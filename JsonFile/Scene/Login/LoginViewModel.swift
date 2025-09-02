//
//  LoginViewModel.swift
//  JsonFile
//
//  Created by Shamkhal Guliyev on 28.08.25.
//

import Foundation

class LoginViewModel {
    private var users = [User]()
    private let manager = JsonFileManager()
    
    func readUserData() {
        manager.readUserDataFromFile { users in
            self.users = users
        }
    }
    
    func isUserExist(email: String, password: String) -> Bool {
//        if users.contains(where: { $0.email == email && $0.password == password }) {
//            return true
//        }
//        return false
        users.contains(where: { $0.email == email && $0.password == password })
    }
}
