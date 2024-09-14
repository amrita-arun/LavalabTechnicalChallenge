//
//  AddPopupView.swift
//  LavalabTechChallenge
//
//  Created by Administrator on 9/13/24.
//

import SwiftUI

struct AddPopupView: View {
    var body: some View {
        Text("Hello")
        /*
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
                        // Handle adding the new project here
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
         */
    }
}

struct AddPopupView_Previews: PreviewProvider {
    static var previews: some View {
        AddPopupView()
    }
}
