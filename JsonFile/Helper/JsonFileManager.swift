//
//  JsonFileManager.swift
//  JsonFile
//
//  Created by Shamkhal Guliyev on 26.08.25.
//

import Foundation

enum FileName: String {
    case user = "User.json"
    case basket = "Basket.json"
}

class JsonFileManager {
    var fileName: FileName = .user
    
    func getFilePath(path: FileName = .user) -> URL {
        let files = FileManager.default.urls(for: .documentDirectory,
                                            in: .userDomainMask)
        let file = files[0].appendingPathComponent(path.rawValue)
        print(file)
        return file
    }
    
    func readUserDataFromFile(completion: (([User]) -> Void)) {
        do {
            let data = try Data(contentsOf: getFilePath(path: .user))
            let model = try JSONDecoder().decode([User].self, from: data)
            completion(model)
        } catch {
            print(error.localizedDescription)
        }
    }
    
    func saveUserDataToFile(users: [User]) {
        do {
            let model = try JSONEncoder().encode(users)
            let path = getFilePath()
            try model.write(to: path)
        } catch {
            print(error.localizedDescription)
        }
    }
}
