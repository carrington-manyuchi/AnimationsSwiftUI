//
//  PopOverBootcamp.swift
//  AnimationsSwiftUI
//
//  Created by Manyuchi, Carrington C on 2025/04/01.
//

import SwiftUI

struct PopOverBootcamp: View {
    
    @State private var showSheet: Bool = false
    @State private var showNewScreen: Bool = false
    var body: some View {
        ZStack {
            Color.orange
                .edgesIgnoringSafeArea(.all)
            VStack {
                Button("BUTTON") {
                    //showSheet.toggle()
                    withAnimation(.spring()) {
                        showNewScreen.toggle()
                    }
                    
                }
                .font(.largeTitle)
                Spacer()
            }
            
            //TODO: METHOD 1: - SHEET
//            .sheet(isPresented: $showSheet) {
//                NewScreen()
//            }
            //TODO: METHOD 2: - TRANSITIONS
//            ZStack {
//                if showNewScreen {
//                    NewScreen(showNewScreen: $showNewScreen)
//                        .padding(.top, 100)
//                        .transition(.move(edge: .bottom))
//                        .animation(.spring, value: showNewScreen)
//                }
//            }
//            .zIndex(2.0)
//            
            //TODO: METHOD 3: - ANIMATION OFFSET
            
            NewScreen(showNewScreen: $showNewScreen)
                .padding(.top, 100)
                .offset(y: showNewScreen ? 0 : UIScreen.main.bounds.height)

        }
    }
}



struct NewScreen: View {
    
    @Environment(\.dismiss) var dismiss
    @Binding var showNewScreen: Bool
    
    var body: some View {
        ZStack(alignment: .topLeading) {
            Color.purple
                .ignoresSafeArea()
            
                Button {
                    //dismiss()
                    showNewScreen.toggle()
                } label: {
                    Image(systemName: "xmark")
                        .font(.largeTitle)
                        .foregroundStyle(.white)
                        .padding(20)
                }

        }
    }
}

#Preview {
    PopOverBootcamp()
}
