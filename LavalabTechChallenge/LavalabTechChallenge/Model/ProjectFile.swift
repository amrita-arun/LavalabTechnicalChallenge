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

/*
 
 class ProjectFile: ObservableObject, Codable, Identifiable {
 @Published var title = ""
 @Published var lastEdited = ""
 
 init() {// (t: String, e: String) {
 //title = t
 //lastEdited = e
 }
 
 enum CodingKeys: String, CodingKey {
 case title
 case lastEdited
 }
 
 public func encode(to encoder: Encoder) throws {
 var container = encoder.container(keyedBy: CodingKeys.self)
 try container.encode(title, forKey: .title)
 try container.encode(lastEdited, forKey: .lastEdited)
 }
 
 required init(from decoder:Decoder) throws {
 let container = try decoder.container(keyedBy: CodingKeys.self)
 title = try container.decodeIfPresent(String.self, forKey: .title) ?? "Untitled"
 lastEdited = try container.decodeIfPresent(String.self, forKey: .lastEdited) ?? ""
 }
 }
 
 */
