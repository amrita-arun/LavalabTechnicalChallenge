//
//  DrawerMenuOptionModel.swift
//  LavalabTechChallenge
//
//  Created by Amrita on 9/12/24.
//

import Foundation

enum DrawerMenuOptionModel: Int, CaseIterable {
    case allProjects
    case yourProjects
    case sharedWithYou
    case archived
    case trash
    
    var title: String {
        switch self {
        case .allProjects:
            return "All Projects"
        case .yourProjects:
            return "Your Projects"
        case .sharedWithYou:
            return "Shared With You"
        case .archived:
            return "Archived"
        case .trash:
            return "Trash"
        }
    }
    
    var systemImageName: String {
        switch self {
        case .allProjects:
            return "house.fill"
        case .yourProjects:
            return "person.fill"
        case .sharedWithYou:
            return "person.3.fill"
        case .archived:
            return "tray.and.arrow.down.fill"
        case .trash:
            return "trash.fill"
        }
    }
}

extension DrawerMenuOptionModel: Identifiable {
    var id: Int {return self.rawValue} //assigns each one of our cases a unique ID so we don't have to assign IDs manually
}
