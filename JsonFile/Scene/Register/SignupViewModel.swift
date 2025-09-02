//
//  SignupViewModel.swift
//  JsonFile
//
//  Created by Shamkhal Guliyev on 28.08.25.
//

import Foundation

class SignupViewModel {
    private var users = [User]()
    private var manager = JsonFileManager()
    
    func getUserData() {
        manager.readUserDataFromFile { userItems in
            self.users = userItems
            print(self.users)
        }
    }
    
    func saveUserData(user: User) {
        users.append(user)
        manager.saveUserDataToFile(users: users)
    }
}
