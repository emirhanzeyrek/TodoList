//
//  ToDoListApp.swift
//  ToDoList
//
//  Created by Emirhan Zeyrek on 18.03.2024.
//

import SwiftUI
import FirebaseCore

@main
struct ToDoListApp: App {
    init() {
        FirebaseApp.configure()
    }
    var body: some Scene {
        WindowGroup {
            MainView()
        }
    }
}
