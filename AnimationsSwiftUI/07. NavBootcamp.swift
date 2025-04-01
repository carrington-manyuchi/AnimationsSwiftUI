//
//  NavBootcamp.swift
//  AnimationsSwiftUI
//
//  Created by Manyuchi, Carrington C on 2025/04/01.
//

import SwiftUI

struct NavBootcamp: View {
    var body: some View {
        NavigationStack {

                VStack(spacing: 20) {
                    NavigationLink("Hello World") {
                        Text("Second Screen")
                    }
                    NavigationLink("Hello World") {
                        Text("Second Screen")
                    }
                    NavigationLink("Hello World") {
                        Text("Second Screen")
                    }
                    
                    NavigationLink {
                        Text("Second Screen")
                    } label: {
                        Text("Hello World")
                    }

                    
                    Text("Hello World")
                }
                .navigationTitle("All Inboxes")
                .navigationBarTitleDisplayMode(.automatic)
                
            }
            
        }
}

#Preview {
    NavBootcamp()
}
