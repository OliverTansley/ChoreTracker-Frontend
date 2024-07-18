//
//  ContentView.swift
//  Taskit
//
//  Created by Oliver tansley on 12/07/2024.
//

import SwiftUI

struct ContentView: View {
    
    @State private var choreDone = false
    
    var body: some View {
        VStack {
            NavigationSplitView {
                List {
                    HStack{
                        Text("Person 1")
                        Toggle(isOn: $choreDone) {
                            Text("")
                        }
                    }
                }
                .navigationTitle("This Week")
            } detail: {
                Text("Taskit")
            }
        }
        
    }
}

#Preview {
    ContentView()
        
}
