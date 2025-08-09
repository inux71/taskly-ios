//
//  DataManager.swift
//  Taskly
//
//  Created by Kacper Grabiec on 09/08/2025.
//

import Foundation
import SwiftData

class DataManager {
    static let shared = DataManager()
    
    private let container: ModelContainer
    private let context: ModelContext
    
    init() {
        do {
            container = try ModelContainer(for: Task.self)
            context = ModelContext(container)
        } catch {
            fatalError("Unable to create ModelContainer: \(error)")
        }
    }
    
    func insert(model: any PersistentModel) {
        self.context.insert(model)
    }
}
