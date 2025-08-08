//
//  AddTaskCoordinator.swift
//  Taskly
//
//  Created by Kacper Grabiec on 08/08/2025.
//

import Foundation
import SwiftUI

class AddTaskCoordinator: ObservableObject, Navigable {
    typealias Destination = AddTaskDestination
    
    @Published var path: NavigationPath = NavigationPath()
    
    func navigate(to destination: AddTaskDestination) {
        self.path.append(destination)
    }
    
    func navigateBack() {
        guard !self.path.isEmpty else { return }
        
        self.path.removeLast()
    }
    
    @ViewBuilder func destination(for destination: AddTaskDestination) -> some View {
        switch destination {
        case .addTask:
            AddTaskView()
        }
    }
}
