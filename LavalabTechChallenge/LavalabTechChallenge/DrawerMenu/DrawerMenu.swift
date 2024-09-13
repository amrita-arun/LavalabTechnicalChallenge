//
//  DrawerMenu.swift
//  LavalabTechChallenge
//
//  Created by Administrator on 9/12/24.
//

import SwiftUI

struct DrawerMenu: View {
    @Binding var isShowing: Bool
    @State private var selectedOption: DrawerMenuOptionModel?
    
    var body: some View {
        ZStack {
            if isShowing {
                Rectangle()
                    .opacity(0.3)
                    .ignoresSafeArea()
                    .onTapGesture { isShowing.toggle()}
                
                HStack {
                    VStack(alignment: .leading, spacing: 32) {
                        DrawerMenuHeader()
                        
                        VStack {
                            ForEach(DrawerMenuOptionModel.allCases) { option in
                                Button (action: {
                                    selectedOption = option
                                }, label: {
                                    DrawerMenuRowView(option: option, selectedOption: $selectedOption)
                                })
                                //DrawerMenuRowView(option: option)
                            }
                        }
                        
                        Spacer()
                    }
                    .padding()
                    .frame(width: 270, alignment: .leading)
                    .background(.white)
                    
                    Spacer()
                }
            }
        }
        .transition(.move(edge: .leading))
        .animation(.easeInOut, value: isShowing)
    }
}

struct DrawerMenu_Previews: PreviewProvider {
    static var previews: some View {
        DrawerMenu(isShowing: .constant(false))
    }
}
