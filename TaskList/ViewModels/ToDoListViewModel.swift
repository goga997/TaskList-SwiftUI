//
//  ToDoListViewModel.swift
//  TaskList
//
//  Created by Grigore on 23.12.2023.
//

import Foundation

///view model for list of items
/// Primary tab
class ToDoListViewModel: ObservableObject {
    
    @Published var showingNewItemView = false
    
    init() {}
}
