//
//  HomeView.swift
//  LavalabTechChallenge
//
//  Created by Administrator on 9/12/24.
//

import SwiftUI

struct HomeView: View {
    @State private var showMenu = false
    var body: some View {
        NavigationStack {
            ZStack {
                VStack {
                    Text("Hello World")
                }
                .padding()
                
                DrawerMenu(isShowing: $showMenu)
            }
            .toolbar(showMenu ? .hidden : .visible, for: .navigationBar)
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button(action: {
                        showMenu.toggle()
                    }, label: {
                        Image(systemName: "line.3.horizontal")
                    })
                }
                ToolbarItem(placement: .principal) {
                    Image("AroLogo")
                }
            }
            
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
