//
//  DocumentCardView.swift
//  LavalabTechChallenge
//
//  Created by Administrator on 9/13/24.
//

import SwiftUI

struct DocumentCardView: View {
    let docName: String
    let editedLast: String
    
    var body: some View {
        VStack(alignment: .leading) {
                    // Placeholder for the image or icon at the top
                    ZStack {
                        Rectangle()
                            .fill(Color.gray.opacity(0.3))
                            .frame(height: 150) // This keeps the gray rectangle's size consistent
                        
                        Image(systemName: "doc.fill")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 50, height: 50) // Adjust this to make the image smaller
                            .foregroundColor(Color.purple) // Optional: set the color of the image
                    }
                    .frame(maxWidth: .infinity)
                    
                    // Title and subtitle
                    VStack(alignment: .leading) {
                        Text(docName)
                            .font(.headline)
                            .foregroundColor(.black)
                        
                        Text(editedLast)
                            .font(.subheadline)
                            .foregroundColor(.gray)
                    }
                    .padding([.leading, .bottom], 10)
                }
                .background(Color.white)
                .cornerRadius(8)
                .shadow(color: Color.gray.opacity(0.4), radius: 4, x: 0, y: 2)
                .overlay(
                    RoundedRectangle(cornerRadius: 8)
                        .stroke(Color.gray.opacity(0.2), lineWidth: 1)
                )
                .padding()
    }
}

struct DocumentCardView_Previews: PreviewProvider {
    static var previews: some View {
        DocumentCardView(docName: "", editedLast: "")
    }
}
