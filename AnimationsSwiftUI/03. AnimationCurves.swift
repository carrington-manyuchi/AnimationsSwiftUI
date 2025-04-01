//
//  AnimationCurves.swift
//  AnimationsSwiftUI
//
//  Created by Manyuchi, Carrington C on 2025/04/01.
//

import SwiftUI

struct AnimationCurves: View {
    
    @State private var isAnimating: Bool = false
    let timing: Double = 10.0
    
    var body: some View {
        VStack(spacing: 20) {
            Button("Button") {
               
                    isAnimating.toggle()
               
            }
            Spacer()
            
            RoundedRectangle(cornerRadius: 20)
                .frame(
                    width: isAnimating ? 350 : 100,
                    height: 100
                )
                .animation(.spring, value: isAnimating)
               
            RoundedRectangle(cornerRadius: 20)
                .frame(
                    width: isAnimating ? 350 : 100,
                    height: 100
                )
                .animation(
                    .spring(
                        response: 0.5,
                        dampingFraction: 0.7,
                        blendDuration: 1.0
                    ),
                    value: isAnimating
                )
            RoundedRectangle(cornerRadius: 20)
                .frame(
                    width: isAnimating ? 350 : 100,
                    height: 100
                )
                .animation(.easeInOut(duration: timing), value: isAnimating)
               
            RoundedRectangle(cornerRadius: 20)
                .frame(
                    width: isAnimating ? 350 : 100,
                    height: 100
                )
                .animation(.easeOut(duration: timing), value: isAnimating)
               
            
            
            
            Spacer()
        }
    }
}

#Preview {
    AnimationCurves()
}
