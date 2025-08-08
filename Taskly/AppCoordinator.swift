//
//  AppCoordinator.swift
//  Taskly
//
//  Created by Kacper Grabiec on 07/08/2025.
//

import Foundation
import SwiftUI

class AppCoordinator: ObservableObject, Navigable, FullScreenCoverable {
    typealias Destination = AppDestination
    typealias FullScreenCoverItem = AppFullScreenCoverItem
    
    @Published var path = NavigationPath()
    @Published var fullScreenCoverItem: FullScreenCoverItem? = nil
    
    func navigate(to destination: Destination) {
        self.path.append(destination)
    }
    
    func navigateBack() {
        guard !self.path.isEmpty else { return }
        
        self.path.removeLast()
    }
    
    func show(item: FullScreenCoverItem) {
        self.fullScreenCoverItem = item
    }
    
    func dismiss() {
        self.fullScreenCoverItem = nil
    }
    
    @ViewBuilder func destination(for destination: AppDestination) -> some View {
        switch destination {
        case .tasks:
            TasksTabView()
        case .settings:
            SettingsView()
        }
    }
    
    @ViewBuilder func fullScreenCover(for item: AppFullScreenCoverItem) -> some View {
        switch item {
        case .addTask:
            AddTaskRootView()
        }
    }
}
