//
//  FullScreenCoverItem.swift
//  Taskly
//
//  Created by Kacper Grabiec on 07/08/2025.
//

import Foundation

enum FullScreenCoverItem: String, Identifiable {
    case addTask
    
    var id: String {
        self.rawValue
    }
}
