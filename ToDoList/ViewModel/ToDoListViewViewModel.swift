//
//  ToDoListViewViewModel.swift
//  ToDoList
//
//  Created by Emirhan Zeyrek on 18.03.2024.
//

import Foundation
import FirebaseFirestore

///ViewModel for list of items view
///Primary Lab
class ToDoListViewViewModel : ObservableObject {
    @Published var showingNewItemView = false
    private let userId : String
    init(userId: String) {
        self.userId = userId
    }
    ///Delete to do list item
    ///-Parameter id:  Item id to delete
    func delete(id: String) {
        let db = Firestore.firestore()
        db.collection("users")
            .document(userId)
            .collection("todos")
            .document(id)
            .delete()
    }
}
