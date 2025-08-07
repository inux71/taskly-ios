//
//  AppCoordinator.swift
//  Taskly
//
//  Created by Kacper Grabiec on 07/08/2025.
//

import Foundation
import SwiftUI

class AppCoordinator: ObservableObject {
    @Published var path = NavigationPath()
    @Published var fullScreenCoverItem: FullScreenCoverItem? = nil
    
    func navigate(to destination: Destination) {
        self.path.append(destination)
    }
    
    func navigateBack() {
        self.path.removeLast()
    }
    
    func show(item: FullScreenCoverItem) {
        self.fullScreenCoverItem = item
    }
    
    func dismissFullScreenCover() {
        self.fullScreenCoverItem = nil
    }
    
    @ViewBuilder func destination(for destination: Destination) -> some View {
        switch destination {
        case .tasks:
            TasksTabView()
        case .settings:
            SettingsView()
        }
    }
    
    @ViewBuilder func fullScreenCover(for item: FullScreenCoverItem) -> some View {
        switch item {
        case .addTask:
            AddTaskView()
        }
    }
}
