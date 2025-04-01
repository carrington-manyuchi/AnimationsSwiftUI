//
//  TernaryBootcamp.swift
//  AnimationsSwiftUI
//
//  Created by Manyuchi, Carrington C on 2025/04/01.
//

import SwiftUI

struct TernaryBootcamp: View {
    
    @State private var isStartingState: Bool = false
    
    var body: some View {
        VStack {
            Button("Button: \(isStartingState.description)") {
                isStartingState.toggle()
            }
            RoundedRectangle(cornerRadius: 25)
                .fill(isStartingState ? .red : .green)
                .frame(width: isStartingState ? 200 : 300, height: isStartingState ? 100 : 150)            
            Spacer()
        }
    }
}

#Preview {
    TernaryBootcamp()
}
