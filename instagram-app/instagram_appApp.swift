//
//  instagram_appApp.swift
//  instagram-app
//
//  Created by Pham Thi Thu Ha on 01/07/2024.
//

import SwiftUI

@main
struct instagram_appApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
