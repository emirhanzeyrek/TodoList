//
//  LoginViewViewModel.swift
//  ToDoList
//
//  Created by Emirhan Zeyrek on 18.03.2024.
//

import Foundation
import FirebaseAuth

class LoginViewViewModel : ObservableObject {
    @Published var email = ""
    @Published var password = ""
    @Published var errorMessage = ""
    init() {}
    func login() {
        guard validate() else {
            return
        }
        //Try Log In
        Auth.auth().signIn(withEmail: email, password: password)
    }
    private func validate() -> Bool {
        errorMessage = ""
        guard !email.trimmingCharacters(in: .whitespaces).isEmpty, !password.trimmingCharacters(in: .whitespaces).isEmpty else {
            errorMessage = "Please fill in all fields."
            return false
        }
        guard email.contains("@") && email.contains(".") else {
            errorMessage = "Please enter valid email"
            return false
        }
        return true
    }
}
