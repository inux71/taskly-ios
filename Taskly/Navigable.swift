//
//  Navigable.swift
//  Taskly
//
//  Created by Kacper Grabiec on 08/08/2025.
//

import Foundation
import SwiftUI

protocol Navigable {
    associatedtype Destination: Hashable
    
    var path: NavigationPath { get set }
    
    func navigate(to destination: Destination)
    func navigateBack()
}
