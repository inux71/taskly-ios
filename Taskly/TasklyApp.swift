//
//  TasklyApp.swift
//  Taskly
//
//  Created by Kacper Grabiec on 07/08/2025.
//

import SwiftUI

@main
struct TasklyApp: App {
    @StateObject var coordinator = AppCoordinator()
    
    var body: some Scene {
        WindowGroup {
            NavigationStack(path: $coordinator.path) {
                coordinator.destination(for: .tasks) // root view
                    .navigationDestination(for: AppDestination.self) { destination in
                        coordinator.destination(for: destination)
                    }
                    .fullScreenCover(item: $coordinator.fullScreenCoverItem) { fullScreenCoverItem in
                        coordinator.fullScreenCover(for: fullScreenCoverItem)
                    }
            }
            .environmentObject(coordinator)
        }
    }
}
