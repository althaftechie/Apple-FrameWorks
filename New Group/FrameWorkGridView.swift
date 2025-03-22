//
//  FrameWorkGridView.swift
//  Apple-FrameWorks
//
//  Created by Althaf'zMac on 21/03/25.
//

import Foundation
import SwiftUI



struct FrameWorkGridView: View {
    
    @StateObject var viewModel = FrameWorkGridViewModel()
    @State private var isAnimating = false
    
    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVGrid(columns: viewModel.columns){
                    ForEach(MockData.frameworks, id: \.id) { frameWorks in
                        NavigationLink(value: frameWorks) {
                            FrameWorkTitleView(frameWork: frameWorks)
                                .scaleEffect(isAnimating ? 0.8 : 1.0)
                                .animation(.easeInOut(duration: 0.4), value: isAnimating)
                        }
                        .buttonStyle(PlainButtonStyle())
                    }
                }
            }
            .navigationTitle("Apple Frameworks")
            .onAppear {
                isAnimating = true
            }
            .onDisappear {
                isAnimating = false
            }
            .navigationDestination(for: Framework.self) { framework in
                FrameWorkDetailView(frameWork: framework)
            }
        }
    }
}
struct FrameWorkGridView_Previews: PreviewProvider {
    static var previews: some View {
        FrameWorkGridView()
    }
}

struct FrameWorkTitleView: View {
    let frameWork: Framework
    
    var body: some View {
        VStack {
            Image(frameWork.imageName)
                .resizable()
                .frame(width: 90,height: 90)
            Text(frameWork.name)
                .font(.title2)
                .fontWeight(.semibold)
                .minimumScaleFactor(0.7)
                .foregroundColor(.primary) // Supports Dark Mode
        }
        .padding()
    }
}
