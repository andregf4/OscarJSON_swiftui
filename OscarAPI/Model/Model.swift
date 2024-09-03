//
//  Model.swift
//  OscarAPI
//
//  Created by Andre Gerez Foratto on 25/05/24.
//

import Foundation

struct Movie: Codable, Hashable {
    let year: String
    let movie: String
    let genre: [String]
    let director: String
    let poster: String
}
