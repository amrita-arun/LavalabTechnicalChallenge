//
//  ContentView.swift
//  LavalabTechChallenge
//
//  Created by Administrator on 9/12/24.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var viewModel: DocViewModel
    
    var body: some View {
        HomeView(projectFiles: [])
            .environmentObject(viewModel)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
