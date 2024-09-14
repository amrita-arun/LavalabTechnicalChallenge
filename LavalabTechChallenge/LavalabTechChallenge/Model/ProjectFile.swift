//
//  ProjectFile.swift
//  LavalabTechChallenge
//
//  Created by Administrator on 9/13/24.
//

import Foundation
import Firebase
import FirebaseFirestoreSwift

public struct ProjectFile {
    var id: String = UUID().uuidString // Automatically generates a unique ID
    let title: String
    let editedLast: String

    init(title: String, editedLast: String) {
        self.title = title
        self.editedLast = editedLast
    }

    enum CodingKeys: String, CodingKey {
        case title
        case editedLast
    }

}
