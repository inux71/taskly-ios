//
//  TaskPriority.swift
//  Taskly
//
//  Created by Kacper Grabiec on 08/08/2025.
//

import Foundation

enum TaskPriority: String, CaseIterable, Identifiable, Codable {
    case high = "high"
    case medium = "medium"
    case low = "low"
    
    var id: Self { self }
}
