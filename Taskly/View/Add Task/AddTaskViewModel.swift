//
//  AddTaskViewModel.swift
//  Taskly
//
//  Created by Kacper Grabiec on 07/08/2025.
//

import Foundation

class AddTaskViewModel: ObservableObject {
    private let dataManager = DataManager.shared
    
    @Published var title: String = ""
    @Published var selectedPriority: TaskPriority = .medium
    @Published var selectedDate: Date = Date()
    @Published var notificationEnabled: Bool = false
    
    let dateRange: PartialRangeFrom<Date> = {
        Date.now...
    }()
    
    var saveButtonDisabled: Bool {
        title.trimmingCharacters(in: .whitespacesAndNewlines)
            .isEmpty
    }
    
    func saveTask() {
        let task = Task(
            title: title,
            priority: selectedPriority,
            date: selectedDate,
            notificationEnabled: notificationEnabled
        )
        
        dataManager.insert(model: task)
    }
}
