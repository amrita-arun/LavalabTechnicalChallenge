//
//  DrawerMenuHeader.swift
//  LavalabTechChallenge
//
//  Created by Administrator on 9/12/24.
//

import SwiftUI

struct DrawerMenuHeader: View {
    var body: some View {
        HStack() {
            Image("AroLogo")
                .imageScale(.large)
                .foregroundStyle(.white)
                .padding(.vertical)
            
        }
    }
}

struct DrawerMenuHeader_Previews: PreviewProvider {
    static var previews: some View {
        DrawerMenuHeader()
    }
}
