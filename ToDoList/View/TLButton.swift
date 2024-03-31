//
//  TLButton.swift
//  ToDoList
//
//  Created by Emirhan Zeyrek on 18.03.2024.
//

import SwiftUI

struct TLButton: View {
    let title : String
    let background : Color
    let action : () -> Void
    var body: some View {
        Button {
            action()
        } label: {
            ZStack {
                RoundedRectangle(cornerRadius: 10)
                    .foregroundColor(background)
                Text(title)
                    .foregroundColor(Color.white)
                    .bold()
            }
        }
        .padding()
    }
}

#Preview {
    TLButton(title: "Button", background: .orange) {
        //Action
    }
}
