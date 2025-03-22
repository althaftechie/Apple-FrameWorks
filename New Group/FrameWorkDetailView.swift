//
//  FrameWorkDetailView.swift
//  Apple-FrameWorks
//
//  Created by Althaf'zMac on 21/03/25.
//

import SwiftUI

struct FrameWorkDetailView: View {
    
    var frameWork : Framework
    @State private var isShowingSafariView = false
    @State private var animateContent = false
    
    var body: some View {
        VStack {

            FrameWorkTitleView(frameWork: frameWork)
                .scaleEffect(animateContent ? 1 : 0.8)
                .opacity(animateContent ? 1:0)
                .animation(.easeOut(duration: 0.6), value: animateContent)
            Text(frameWork.description)
                .font(.body)
                .padding()
                .offset(y: animateContent ? 0 : 20)
                .opacity(animateContent ? 1 : 0)
                .animation(.easeOut(duration: 0.6).delay(0.2), value: animateContent)
             
            
            Spacer()
            
            Button {
                isShowingSafariView = true
            } label: {
                CButton(title: "Learn More")
                    .offset(y: animateContent ? 0 : 20)
                    .opacity(animateContent ? 1 : 0)
                    .animation(.easeOut(duration: 0.6).delay(0.2), value: animateContent)  

            }
        }
        .onAppear {
            animateContent = true
        }
        .fullScreenCover(isPresented: $isShowingSafariView, content: {
            SafariView(url: URL(string: frameWork.urlString) ?? URL(string: "www.apple.com")!)
        })
    }
}

#Preview {
    FrameWorkDetailView(frameWork: MockData.sampleFramework)
}
