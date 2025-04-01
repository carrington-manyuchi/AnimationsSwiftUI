//
//  SheetBootcamp.swift
//  AnimationsSwiftUI
//
//  Created by Manyuchi, Carrington C on 2025/04/01.
//

import SwiftUI

struct SheetBootcamp: View {
    
    @State var backgroundColor: Color = .green
    @State private var showSheet: Bool = false
    
    var body: some View {
        ZStack {
            backgroundColor
                .ignoresSafeArea()
            
            VStack(spacing: 20) {
                Button {
                    showSheet.toggle()
                } label: {
                    Text("Button")
                        .foregroundStyle(.green)
                        .font(.headline)
                        .padding(.horizontal, 30)
                        .padding(15)
                        .background(
                            RoundedRectangle(cornerRadius: 20)
                                .fill(Color.white)
                        )
                }
//                .sheet(isPresented: $showSheet) {
//                    SecondScreen()
//                }
                .fullScreenCover(isPresented: $showSheet, content: {
                    SecondScreen()
                })
            }
        }
    }
}

struct SecondScreen: View {
    
    @Environment(\.dismiss) var dismiss
    @State var backgroundColor: Color = .red
    @State var showSheet: Bool = false
    var body: some View {
        ZStack(alignment: .topLeading) {
            backgroundColor
                .ignoresSafeArea()
            
            VStack(spacing: 20) {
                Button {
                    dismiss()
                } label: {
                    Image(systemName: "xmark")
                        .foregroundStyle(.white)
                        .font(.largeTitle)
                        .padding(20)
                }
            }
        }
    }
}

#Preview {
    SheetBootcamp()
}
