//
//  ToDoListItemsView.swift
//  TaskList
//
//  Created by Grigore on 23.12.2023.
//

import SwiftUI

struct ToDoListView: View {
    @StateObject var viewModel = ToDoListViewModel()
    private let userID: String
    
    init(userID: String) {
        self.userID = userID
    }
    
    var body: some View {
        NavigationView {
            VStack {
                
            }
            .navigationTitle("Task List")
            .toolbar {
                Button {
                    viewModel.showingNewItemView = true
                } label: {
                    Image(systemName: "plus")
                }

            }
            .sheet(isPresented: $viewModel.showingNewItemView, content: {
                NewItemView(newItemPresented: $viewModel.showingNewItemView)
            })
        }
    }
}

#Preview {
    ToDoListView(userID: "")
}
