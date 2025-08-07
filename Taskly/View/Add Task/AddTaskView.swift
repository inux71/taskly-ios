//
//  AddTaskView.swift
//  Taskly
//
//  Created by Kacper Grabiec on 07/08/2025.
//

import SwiftUI

struct AddTaskView: View {
    @EnvironmentObject var coordinator: AppCoordinator
    
    var body: some View {
        Text("Add Task")
        
        Button("Dismiss") {
            coordinator.dismissFullScreenCover()
        }
    }
}

#Preview {
    AddTaskView()
}
