//
//  TasksTabView.swift
//  Taskly
//
//  Created by Kacper Grabiec on 07/08/2025.
//

import SwiftUI

struct TasksTabView: View {
    @EnvironmentObject var coordinator: AppCoordinator
    
    @StateObject var viewModel = TasksTabViewModel()
    
    var body: some View {
        TabView(selection: $viewModel.selectedTab) {
            ForEach(TaskStatus.allCases, id: \.self) { status in
                Tab(
                    status.rawValue,
                    systemImage: status == .inProgress ? "checklist.unchecked" : "checklist.checked",
                    value: status
                ) {
                    TasksView(status: status)
                }
            }
        }
        .toolbar {
            ToolbarItemGroup(placement: .topBarTrailing) {
                Button("Settings", systemImage: "gear") {
                    coordinator.navigate(to: .settings)
                }
                
                Button("Add task", systemImage: "plus.circle") {
                    coordinator.show(item: .addTask)
                }
            }
        }
    }
}

#Preview {
    NavigationStack {
        TasksTabView()
    }
}
