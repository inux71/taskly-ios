//
//  TasksTabViewModel.swift
//  Taskly
//
//  Created by Kacper Grabiec on 07/08/2025.
//

import Foundation

class TasksTabViewModel: ObservableObject {
    @Published var selectedTab: TaskStatus = .inProgress
}
