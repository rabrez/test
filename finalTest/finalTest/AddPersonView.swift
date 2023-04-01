//
//  AddPersonView.swift
//  finalTest
//
//  Created by Rastislav Brezovsky on 01/04/2023.
//

import SwiftUI

struct AddPersonView: View {
    @Binding var people: [People]
    @Environment(\.dismiss) var dismiss
    @State private var name = ""
    @State private var age = ""

    var body: some View {
        NavigationStack {
            VStack {
                GroupBox {
                    TextField("Name", text: $name)
                    TextField("Age", text: $age)
                }
                .textFieldStyle(.roundedBorder)

                Button("Save") {
                    let newPerson = People(name: name, age: Int(age)!)
                    people.append(newPerson)
                    dismiss()
                }
                .buttonStyle(.borderedProminent)
                Spacer()
            }
            .toolbar {
                Button("Close") {
                    dismiss()
                }
            }
            .navigationTitle("Add new member")
            .navigationBarTitleDisplayMode(.inline)
        }

    }
}
struct AddPersonView_Previews: PreviewProvider {
    
    static var previews: some View {
        
        AddPersonView(people: People)
    }
}
