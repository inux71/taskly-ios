//
//  FullScreenCoverable.swift
//  Taskly
//
//  Created by Kacper Grabiec on 08/08/2025.
//

import Foundation
import SwiftUI

protocol FullScreenCoverable {
    associatedtype FullScreenCoverItem: Identifiable
    
    var fullScreenCoverItem: FullScreenCoverItem? { get set }
    
    func show(item: FullScreenCoverItem)
    func dismiss()
}
