//
//  Struct.swift
//  finalTest
//
//  Created by Rastislav Brezovsky on 01/04/2023.
//

import SwiftUI

struct Family: Codable, Identifiable {
    var id = UUID()
    var name: String
    var peoples: [People]
}

struct People: Codable, Identifiable {
    var id = UUID()
    var name: String
    let age: Int
}
class Families: ObservableObject {
    @ Published var families = [Family]() {
        didSet {
            if let encoded = try? JSONEncoder().encode(families) {
                UserDefaults.standard.set(encoded, forKey: "Items")
            }
        }
    }

    init() {
        if let savedItems = UserDefaults.standard.data(forKey: "Items") {
            if let decodedItems = try? JSONDecoder().decode([Family].self, from: savedItems) {
                families = decodedItems
                return
            }
        }

        families = []
    }
}
