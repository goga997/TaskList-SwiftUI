//
//  TaskListApp.swift
//  TaskList
//
//  Created by Grigore on 23.12.2023.
//

import SwiftUI
import FirebaseCore

@main
struct TaskListApp: App {
    init() {
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            MainView()
        }
    }
}
