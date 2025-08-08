//
//  AddTaskRootView.swift
//  Taskly
//
//  Created by Kacper Grabiec on 08/08/2025.
//

import SwiftUI

struct AddTaskRootView: View {
    @StateObject private var coordinator = AddTaskCoordinator()
    
    var body: some View {
        NavigationStack(path: $coordinator.path) {
            coordinator.destination(for: .addTask) // root view
                .navigationDestination(for: AddTaskDestination.self) { destination in
                    coordinator.destination(for: destination)
                }
        }
        .environmentObject(coordinator)
    }
}

#Preview {
    AddTaskRootView()
}
