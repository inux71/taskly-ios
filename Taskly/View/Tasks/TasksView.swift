//
//  TasksView.swift
//  Taskly
//
//  Created by Kacper Grabiec on 07/08/2025.
//

import SwiftUI

struct TasksView: View {
    let status: TaskStatus
    
    var body: some View {
        Text(status.rawValue)
    }
}

#Preview {
    TasksView(status: .inProgress)
}
