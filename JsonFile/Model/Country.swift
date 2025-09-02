//
//  Country.swift
//  JsonFile
//
//  Created by Shamkhal Guliyev on 21.08.25.
//

import Foundation

struct Country: Codable {
    let countryName: String?
    let cities: [City]?
}

struct City: Codable {
    let name: String?
    let museum: Museum?
}

struct Museum: Codable {
    let name: String?
    let about: String?
}
