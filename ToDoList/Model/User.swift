//
//  User.swift
//  ToDoList
//
//  Created by Emirhan Zeyrek on 18.03.2024.
//

import Foundation

struct User : Codable {
    let id : String
    let name : String
    let email : String
    let joined : TimeInterval
}
