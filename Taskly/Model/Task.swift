//
//  Task.swift
//  Taskly
//
//  Created by Kacper Grabiec on 08/08/2025.
//

import Foundation
import SwiftData

@Model
class Task {
    @Attribute(.unique) var id: UUID
    var title: String
    var priority: TaskPriority
    var date: Date
    var notificationEnabled: Bool
    
    init(
        title: String,
        priority: TaskPriority,
        date: Date,
        notificationEnabled: Bool
    ) {
        self.id = UUID()
        self.title = title
        self.priority = priority
        self.date = date
        self.notificationEnabled = notificationEnabled
    }
}
