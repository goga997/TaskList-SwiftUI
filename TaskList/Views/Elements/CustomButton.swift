//
//  CustomButton.swift
//  TaskList
//
//  Created by Grigore on 23.12.2023.
//

import SwiftUI

struct CustomButton: View {
    
    let title: String
    let background: Color
    let action: () -> Void
    
    var body: some View {
        Button {
            //Action
            action()
        } label: {
            ZStack {
                RoundedRectangle(cornerRadius: 10)
                    .foregroundColor(background)
                
                Text(title)
                    .bold()
                    .foregroundColor(Color.white)
            }
        }
    }
}

#Preview {
    CustomButton(title: "title", background: .pink) {
        //Action
    }
}
