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
            ZStack() {
                VStack(alignment: .leading) {
                    HStack(alignment: .firstTextBaseline) {
                        Text("All Projects")
                            .bold()
                            .padding()
                        Spacer()
                        Image(systemName: "square.split.2x2.fill")
                        Image(systemName: "line.3.horizontal")
                            .padding()
                        
                    }
                }
                
                VStack {
                    Spacer()
                    HStack {
                        Spacer()
                        Button(action: {
                            // Action for the button
                        }) {
                            Image(systemName: "plus")
                                .resizable()
                                .frame(width: 35, height: 35)
                                .padding()
                                .background(Color.blue)
                                .foregroundColor(.white)
                                .clipShape(Circle())
                                .shadow(radius: 10)
                        }
                        .padding(.trailing, 20)
                        .padding(.bottom, 20)
                    }
                }
                /*
                Button() {
                    // Action
                } label: {
                    Image(systemName: "plus")
                        .font(.title.weight(.semibold))
                        .padding()
                        .background(Color.pink)
                        .foregroundColor(.white)
                        .clipShape(Circle())
                        .shadow(radius: 4, x: 0, y: 4)

                }
                .padding()
                 */
                
                DrawerMenu(isShowing: $showMenu)
            }
            .toolbar(showMenu ? .hidden : .visible, for: .navigationBar)
            .navigationBarTitleDisplayMode(.large)
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button(action: {
                        showMenu.toggle()
                    }, label: {
                        Image(systemName: "line.3.horizontal")
                            .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 40, height: 40) // Set the desired size here
                    })
                }
                ToolbarItem(placement: .principal) {
                    Image("AroLogo")
                        .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 150, height: 150) // Set the desired size here
                            
                }
                ToolbarItem(placement: .navigationBarTrailing) {
                    Image(systemName: "magnifyingglass")
                        .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 35, height: 35) // Set the desired size here
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
