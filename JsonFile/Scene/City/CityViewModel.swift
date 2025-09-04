//
//  CityViewModel.swift
//  JsonFile
//
//  Created by Shamkhal Guliyev on 02.09.25.
//

import Foundation

class CityViewModel {
    var country: Country
    
    init(country: Country) {
        print("----")
        self.country = country
    }
}

class ProductDetailViewModel {
    var productId: String
    var coordinator: String
    
    init(productId: String, coordinator: String) {
        self.productId = productId
        self.coordinator = coordinator
    }
}
