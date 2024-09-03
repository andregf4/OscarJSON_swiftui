//
//  ViewModel.swift
//  OscarAPI
//
//  Created by Andre Gerez Foratto on 25/05/24.
//

import Foundation

class ViewModel: ObservableObject {
    @Published var movies = [Movie]()
    
    init() {
        if let url = Bundle.main.url(forResource: "OscarJSON", withExtension: "json") {
            do {
                let data = try Data(contentsOf: url)
                let decoder = JSONDecoder()
                self.movies = try decoder.decode([Movie].self, from: data)
            } catch {
                print("Error decoding JSON: \(error)")
            }
        } else {
            print("Could not find JSON file")
        }
    }
}
