//
//  PersistenceManager.swift
//  Bitsi (iOS)
//
//  Created by BJ Miller on 8/2/20.
//

import CoreData
import Foundation

final class PersistenceManager {
  lazy var viewContext: NSManagedObjectContext = {
    persistentContainer.viewContext
  }()

  private lazy var persistentContainer: NSPersistentContainer = {
    let container = NSPersistentContainer(name: "Bitsi")
    container.loadPersistentStores { (desc: NSPersistentStoreDescription, error: Error?) in
      if let err = error {
        fatalError(err.localizedDescription)
      }
      #if DEBUG
      print("core data location: \(desc.url?.absoluteString ?? "-")")
      #endif
    }
    return container
  }()
}
