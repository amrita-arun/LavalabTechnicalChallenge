//
//  DocViewModel.swift
//  LavalabTechChallenge
//
//  Created by Administrator on 9/13/24.
//

import Foundation
import Firebase
import FirebaseFirestoreSwift

class DocViewModel: ObservableObject {
    let db = Firestore.firestore()
    
    func addDoc(title: String, lastEdit: String) {
        let newProj = ProjectFile(title: title, editedLast: lastEdit)
        
        do {
            try db.collection("projects").document(title).setData([
                "Title": title,
                "Edited Last": lastEdit
              ])
        } catch let error {
          print("Error writing city to Firestore: \(error)")
        }
    }
    
    func getAllDocs() async -> [ProjectFile] {
        var projects: [ProjectFile] = []

        do {
          let querySnapshot = try await db.collection("projects").getDocuments()
          for document in querySnapshot.documents {
              let data = document.data()
              let title = data["Title"] as? String ?? "No title"
              let lastEdited = data["Edited Last"] as? String ?? "No last edited date"
              
              projects.append(ProjectFile(title: title, editedLast: lastEdited))
            print("\(document.documentID) => \(document.data())")
          }
        } catch {
          print("Error getting documents: \(error)")
        }
        
        return projects
    }
}
