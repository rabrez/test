//
//  FamilyMembersView.swift
//  finalTest
//
//  Created by Rastislav Brezovsky on 01/04/2023.
//

import SwiftUI

struct FamilyMembersView: View {
    @Binding var people: [People]
    @State private var showAddFamilyMember = false
    let familyName: String

    var body: some View {
        List {
            ForEach(people) { person in
                NavigationLink {
                    PersonDetailView(person: person)
                } label: {
                    Text(person.name)
                }
            }
        }
        .sheet(isPresented: $showAddFamilyMember) {
            AddPersonView(people: $people)
        }
        .toolbar {
            Button("Add Member") {
                showAddFamilyMember.toggle()
            }
        }
        .navigationTitle(familyName)
        .navigationBarTitleDisplayMode(.inline)
    }
}


struct FamilyMembersView_Previews: PreviewProvider {
    static var previews: some View {
        FamilyMembersView()
    }
}
