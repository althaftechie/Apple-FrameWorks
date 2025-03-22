//
//  SplashScreen.swift
//  Apple-FrameWorks
//
//  Created by Althaf'zMac on 22/03/25.
//

import SwiftUI

struct SplashScreenView: View {
    
    @State private var isActive = false
    
    var body: some View {
        if isActive {
            FrameWorkGridView() // Navigate to main screen
        } else {
            VStack {
                LottieView(animationName: "frameWork") // Lottie JSON file
                    .frame(width: 200, height: 200)
            }
            .onAppear {
                DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
                    isActive = true // Switch to main screen after animation
                }
            }
        }
    }
}

#Preview {
    SplashScreenView()
}
