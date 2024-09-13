//
//  DocumentDetailsModel.swift
//  LavalabTechChallenge
//
//  Created by Administrator on 9/13/24.
//

import Foundation

enum DocumentDetailsModel: Int, CaseIterable {
    case assignment1
    case lab3
    case workbook
    case manuscript
    
    var title: String {
        switch self {
        case .assignment1:
            return "Assignment 1"
        case .lab3:
            return "Lab 3"
        case .workbook:
            return "Workbook Ch. 3"
        case .manuscript:
            return "Manuscript"
        }
    }
    
    var editedLast: String {
        switch self {
        case .assignment1:
            return "1m ago"
        case .lab3:
            return "40m ago"
        case .workbook:
            return "2 hrs ago"
        case .manuscript:
            return "2 days ago"
        }
    }
}

extension DocumentDetailsModel: Identifiable {
    var id: Int {return self.rawValue} //assigns each one of our cases a unique ID so we don't have to assign IDs manually
}
