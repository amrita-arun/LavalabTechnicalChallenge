//
//  DrawerMenuRowView.swift
//  LavalabTechChallenge
//
//  Created by Administrator on 9/12/24.
//

import SwiftUI

struct DrawerMenuRowView: View {
    let option: DrawerMenuOptionModel
    @Binding var selectedOption: DrawerMenuOptionModel?
    
    private var isSelected: Bool {
        return selectedOption == option
    }
    
    var body: some View {
        HStack(spacing: 20) {
            Image(systemName: option.systemImageName)
                .imageScale(.small)
            
            Text(option.title)
                .font(.subheadline)
            
            Spacer()
        }
        .padding(.leading)
        .foregroundStyle(isSelected ? .blue: .primary)
        .frame(width: 216, height: 44)
        .background(isSelected ? .blue.opacity(0.25) : .clear)
        .clipShape(RoundedRectangle(cornerRadius: 10))
    }
}

struct DrawerMenuRowView_Previews: PreviewProvider {
    static var previews: some View {
        DrawerMenuRowView(option: .allProjects, selectedOption: .constant(.allProjects))
    }
}
