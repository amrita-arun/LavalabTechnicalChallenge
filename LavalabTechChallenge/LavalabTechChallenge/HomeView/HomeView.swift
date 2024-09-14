//
//  HomeView.swift
//  LavalabTechChallenge
//
//  Created by Administrator on 9/12/24.
//

import SwiftUI

struct HomeView: View {
    @State private var showMenu = false
    @EnvironmentObject var viewModel: DocViewModel
    @State var projectFiles: [ProjectFile]
    @State private var isPopupPresented: Bool = false
    @State private var newProjectTitle: String = ""

    
    var body: some View {
        NavigationStack {
            ZStack() {
                VStack(alignment: .leading) {
                    HStack(alignment: .firstTextBaseline) {
                        Text("All Projects")
                            .font(.title)
                            .bold()
                            .padding(.horizontal)
                        Spacer()
                        Image(systemName: "square.split.2x2.fill")
                            .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 25, height: 25) // Set the desired size here
                        Image(systemName: "line.3.horizontal")
                            .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 30, height: 30) // Set the desired size here
                                .padding(.horizontal)
                            //.padding()
                        
                        
                    }
                    Spacer()
                    ScrollView {
                        ForEach(projectFiles, id: \.id) { proj in
                            DocumentCardView(docName: proj.title, editedLast: proj.editedLast)
                        }
                        /*
                        ForEach(DocumentDetailsModel.allCases) { doc in
                            DocumentCardView(docName: doc.title, editedLast: doc.editedLast)
                            //DrawerMenuRowView(option: option)
                        }
                         */
                    }
                    .onAppear {
                        Task {
                            await loadProjects()
                        }
                    }
                
                    
                    Spacer()

                }
                
                VStack {
                    Spacer()
                    HStack {
                        Spacer()
                        Button(action: {
                            isPopupPresented.toggle()
                            /*
                            Task {
                                let lastEdited = DateFormatter.localizedString(from: Date(), dateStyle: .short, timeStyle: .short)
                                viewModel.addDoc(title: newProjectTitle, lastEdit: lastEdited)
                                //viewModel.addDoc(title: "Project 1", lastEdit: lastEdited)
                            }
                             */
                        }) {
                            Image(systemName: "plus")
                                .resizable()
                                .frame(width: 35, height: 35)
                                .padding()
                                .background(Color("AroPurple"))
                                .foregroundColor(.white)
                                .clipShape(Circle())
                                .shadow(radius: 10)
                        }
                        .padding(.trailing, 20)
                        .padding(.bottom, 20)
                    }
                }
                
                if isPopupPresented {
                        Color.black.opacity(0.4)
                            .edgesIgnoringSafeArea(.all)
                            .onTapGesture {
                                withAnimation {
                                    isPopupPresented = false
                                }
                            }

                        VStack(spacing: 16) {
                            Text("New Project")
                                .font(.headline)
                                .padding()

                            TextField("Enter project title", text: $newProjectTitle)
                                .padding()
                                .background(Color(.systemGray6))
                                .cornerRadius(8)

                            HStack {
                                Button(action: {
                                    withAnimation {
                                        isPopupPresented = false
                                    }
                                }) {
                                    Text("Cancel")
                                        .foregroundColor(.red)
                                }
                                .padding(.horizontal)

                                Spacer()

                                Button(action: {
                                    Task {
                                        let lastEdited = DateFormatter.localizedString(from: Date(), dateStyle: .short, timeStyle: .short)
                                        viewModel.addDoc(title: newProjectTitle, lastEdit: lastEdited)
                                        await loadProjects()
                                    }
                                    print("New project title: \(newProjectTitle)")
                                    withAnimation {
                                        isPopupPresented = false
                                    }
                                }) {
                                    Text("Add")
                                        .foregroundColor(.blue)
                                }
                                .padding(.horizontal)
                            }
                            .padding(.top, 8)
                        }
                        .padding()
                        .background(Color.white)
                        .cornerRadius(12)
                        .shadow(radius: 10)
                        .frame(maxWidth: 300)
                        .transition(.scale)
                    }
                        
                
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
                    .foregroundColor(.black)
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
    
    func loadProjects() async {
        projectFiles = await viewModel.getAllDocs()
        print(projectFiles)
    }

}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView(projectFiles: [])
    }
}
