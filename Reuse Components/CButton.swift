//
//  CButton.swift
//  Apple-FrameWorks
//
//  Created by Althaf'zMac on 21/03/25.
//

import SwiftUI

struct CButton: View {
    
    var title: String
    
    var body: some View {
        Text(title)
            .font(.title2)
            .fontWeight(.semibold)
            .frame(width: 280, height: 50)
            .background(Color.red)
            .foregroundColor(.white)
            .clipShape(RoundedRectangle(cornerRadius: 10))
    }
}

#Preview {
    CButton(title: "Title")
}
