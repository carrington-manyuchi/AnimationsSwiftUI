//
//  TransitionBootcamp.swift
//  AnimationsSwiftUI
//
//  Created by Manyuchi, Carrington C on 2025/04/01.
//

import SwiftUI

struct TransitionBootcamp: View {
    
    @State var showView: Bool = false
    
    var body: some View {
        
        ZStack(alignment: .bottom) {
            
            VStack {
                Button("Button") {
                    withAnimation() {
                        showView.toggle()
                    }
                }
                Spacer()
            }
            
            if showView {
                RoundedRectangle(cornerRadius: 30)
                    .frame(height: UIScreen.main.bounds.height * 0.5)
                    .transition(
                        .asymmetric(insertion: .move(edge: .bottom), removal: .move(edge: .bottom))
                    )
            }
            
           
        }
        .ignoresSafeArea(edges: .bottom)
    }
}

#Preview {
    TransitionBootcamp()
}
