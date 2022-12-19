//
//  SwiftUIExApp.swift
//  SwiftUIEx
//
//  Created by useok on 2022/12/19.
//

import SwiftUI

@main
struct SwiftUIExApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
