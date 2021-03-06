//
//  BitsiApp.swift
//  Shared
//
//  Created by BJ Miller on 7/26/20.
//

import SwiftUI

@main
struct BitsiApp: App {
  let persistenceManager = PersistenceManager()

  var body: some Scene {
    WindowGroup {
      WelcomeView()
        .environment(\.managedObjectContext, persistenceManager.viewContext)
    }
  }
}
