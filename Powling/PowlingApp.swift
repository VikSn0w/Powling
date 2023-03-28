//
//  PowlingApp.swift
//  Powling
//
//  Created by vit.pic on 28/03/23.
//

import SwiftUI

@main
struct PowlingApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
