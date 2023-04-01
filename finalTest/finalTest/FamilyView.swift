//
//  FamilyView.swift
//  finalTest
//
//  Created by Rastislav Brezovsky on 01/04/2023.
//

import SwiftUI

struct FamilyView: View {
    @ObservedObject var model: Families
    @State private var showAddFamily = false

    var body: some View {
        List {
            ForEach($model.families) { family in
                NavigationLink {
                    FamilyMembersView(people: family.peoples, familyName: family.name.wrappedValue)
                } label: {
                    Text(family.name.wrappedValue)
                }
            }
        }
        .sheet(isPresented: $showAddFamily) {
            AddNewFamilyView(model: model)
        }
        .toolbar {
            Button("Add Family") {
                showAddFamily.toggle()
            }
        }
        .navigationTitle("Families")
    }
}


struct FamilyView_Previews: PreviewProvider {
    static var previews: some View {
        FamilyView(model: Families())
    }
}
