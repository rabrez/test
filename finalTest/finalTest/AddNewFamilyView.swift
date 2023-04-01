//
//  AddNewFamilyView.swift
//  finalTest
//
//  Created by Rastislav Brezovsky on 01/04/2023.
//

import SwiftUI

struct AddNewFamilyView: View {
    @Environment(\.dismiss) var dismiss
    @ObservedObject  var model: Families
    @State private var familyName = ""

    var body: some View {
        NavigationStack {
            VStack {
                GroupBox {
                    TextField("Name of the family", text: $familyName)
                }
                .textFieldStyle(.roundedBorder)

                Button("Save") {
                    let newFamily = Family(name: familyName, peoples: [])
                    model.families.append(newFamily)
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
        }
    }
}


struct AddNewFamilyView_Previews: PreviewProvider {
    static var previews: some View {
        AddNewFamilyView( model: Families())
    }
}
