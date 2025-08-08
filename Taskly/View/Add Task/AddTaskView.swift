//
//  AddTaskView.swift
//  Taskly
//
//  Created by Kacper Grabiec on 07/08/2025.
//

import SwiftUI

struct AddTaskView: View {
    @EnvironmentObject private var appCoordinator: AppCoordinator
    @EnvironmentObject private var coordinator: AddTaskCoordinator
    
    @StateObject private var viewModel = AddTaskViewModel()
    
    @FocusState private var titleFieldFocused: Bool
    
    var body: some View {
        Form {
            Section {
                TextField(
                    text: $viewModel.title,
                    prompt: Text("title")
                ) {
                    Text("Title")
                }
                .focused($titleFieldFocused)
                
                Picker(
                    "Priority",
                    selection: $viewModel.selectedPriority
                ) {
                    ForEach(TaskPriority.allCases, id: \.id) { priority in
                        Text(priority.rawValue)
                            .tag(priority)
                    }
                }
                
                DatePicker(
                    "Date",
                    selection: $viewModel.selectedDate,
                    in: viewModel.dateRange,
                    displayedComponents: [.date, .hourAndMinute]
                )
                .datePickerStyle(.graphical)
                
                Toggle(
                    "Notification",
                    systemImage: viewModel.notificationEnabled ? "bell" : "bell.slash",
                    isOn: $viewModel.notificationEnabled
                )
            }
            
            Section {
                Button("Cancel", role: .destructive) {
                    appCoordinator.dismiss()
                }
            }
        }
        .navigationTitle("Add Task")
        .toolbar {
            ToolbarItem(placement: .topBarTrailing) {
                Button("Save") {
                    // TODO: save task
                    appCoordinator.dismiss()
                }
                .disabled(viewModel.saveButtonDisabled)
            }
        }
    }
}

#Preview {
    NavigationStack {
        AddTaskView()
    }
}
