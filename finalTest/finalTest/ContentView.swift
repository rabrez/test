//
//  ContentView.swift
//  finalTest
//
//  Created by Rastislav Brezovsky on 01/04/2023.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var model = Families()
    var body: some View {
        NavigationStack {
            FamilyView(model: model)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
