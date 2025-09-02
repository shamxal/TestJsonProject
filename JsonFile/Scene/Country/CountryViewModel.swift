//
//  CountryViewModel.swift
//  JsonFile
//
//  Created by Shamkhal Guliyev on 28.08.25.
//

import UIKit

class CountryViewModel {
    var countryItems = [Country]()
    
    func getCountryData(completion: (() -> Void)) {
        //1 - get file path
        guard let fileURL = Bundle.main.url(forResource: "Country", withExtension: "json") else { return }
        print(fileURL)
        
        //2 - convert to data
        guard let data = try? Data(contentsOf: fileURL) else { return }
        
        //3 - parse(decode) data
        do {
//            let data = try Data(contentsOf: fileURL)
            countryItems = try JSONDecoder().decode([Country].self,
                                                    from: data)
            print(countryItems)
            completion()
        } catch {
            print(error.localizedDescription)
        }
    }
}
