//
//  PersonDetailView.swift
//  finalTest
//
//  Created by Rastislav Brezovsky on 01/04/2023.
//

import SwiftUI

struct PersonDetailView: View {
    var person: People

    var body: some View {
        Text("Name: \(person.name)")
        Text("Age: \(person.age) years old")
    }
}

struct PersonDetailView_Previews: PreviewProvider {
    static var previews: some View {
        PersonDetailView(person: People(name: "jozo", age: 22))
    }
}
